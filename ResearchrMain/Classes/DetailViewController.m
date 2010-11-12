//
//  DetailViewController.m
//  ResearchrMain
//
//  Created by Nami on 9/22/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "DetailViewController.h"
#import "RootViewController.h"
#import "HomeViewController.h"
#import "SignInViewController.h"
#import "ResearchrProxy.h"
#import "Publication.h"
#import "BaseListViewController.h"
#import "PublicationSummaryView.h"



@interface DetailViewController ()
@property (nonatomic, retain) UIPopoverController *popoverController;
- (void)configureView;
@end



@implementation DetailViewController

@synthesize toolbar, popoverController, currentView, container, bottomToolbar, buttonItemSignIn, searchBar;

#pragma mark -
#pragma mark Managing the detail item


-(IBAction) signIn: (id)sender
{
	SignInViewController *signInController = [[SignInViewController alloc] initWithNibName:@"SignInViewController" bundle:[NSBundle mainBundle]];
	
	signInController.delegate = self;
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:signInController];
	
	navController.modalPresentationStyle = UIModalPresentationFormSheet;
	[self presentModalViewController:navController animated:YES];
	
}

/*
 When setting the detail item, update the view and dismiss the popover controller if it's showing.
 */
- (void)setCurrentView:(UIView*)newView {
	
	NSLog(@"setCurrentView-Beginning");
	
    if (![currentView isEqual:newView]) {
        [currentView release];
        currentView = [newView retain];
        
        // Update the view.
        [self configureView];
    }

    if (popoverController != nil) {
        [popoverController dismissPopoverAnimated:YES];
    }        
}


- (void)configureView {
    // Update the user interface for the detail item.
    //detailDescriptionLabel.text = [detailItem description];
	
	NSLog(@"configureView-Beginning");
	
	[self.container addSubview:currentView];
	
}


#pragma mark -
#pragma mark Split view support

-(void) displaySearchResult: (NSString*) keyword
{
	ResearchrProxy *proxy = [[ResearchrProxy alloc] init];
	NSMutableArray *publications = [proxy searchPublication:keyword];
	
    BaseListViewController* resultsView = [[Publication getPresenter] getListView:publications];
	resultsView.containerControl = self;
	[self.container addSubview:resultsView.view];
	
}

-(void)searchBarSearchButtonClicked:(UISearchBar*) theSearchBar
{
	[theSearchBar resignFirstResponder];
	[self displaySearchResult:theSearchBar.text];
}

-(BOOL)textFieldShouldReturn:(UITextField*) theTextField
{
	[theTextField resignFirstResponder];
	return YES;
}

-(void)dismissRequested:(BOOL)isOK
{
	[self dismissModalViewControllerAnimated:YES];
	
	NSLog(searchBar.text);
}

-(void) showDetail: (BaseDetailView*)detailView
{
	self.currentView = detailView.view;
}


- (void)splitViewController: (UISplitViewController*)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem*)barButtonItem forPopoverController: (UIPopoverController*)pc {
    
    barButtonItem.title = @"Root List";
    NSMutableArray *items = [[toolbar items] mutableCopy];
    [items insertObject:barButtonItem atIndex:0];
    [toolbar setItems:items animated:YES];
    [items release];
    self.popoverController = pc;
}


// Called when the view is shown again in the split view, invalidating the button and popover controller.
- (void)splitViewController: (UISplitViewController*)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem {
    
    NSMutableArray *items = [[toolbar items] mutableCopy];
    [items removeObjectAtIndex:0];
    [toolbar setItems:items animated:YES];
    [items release];
    self.popoverController = nil;
}


#pragma mark -
#pragma mark Rotation support

// Ensure that the view controller supports rotation and that the split view can therefore show in both portrait and landscape.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}


#pragma mark -
#pragma mark View lifecycle


//Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	searchBar.delegate = self;
    [super viewDidLoad];
}
 

/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}
*/

- (void)viewDidUnload {
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.popoverController = nil;
}


#pragma mark -
#pragma mark Memory management

/*
- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}
*/

- (void)dealloc {
    [popoverController release];
    [toolbar release];
    
    [detailItem release];
    [detailDescriptionLabel release];
    [super dealloc];
}

@end
