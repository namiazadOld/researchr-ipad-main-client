    //
//  PublicationDetailView.m
//  ResearchrMain
//
//  Created by Nami on 11/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PublicationDetailView.h"
#import "PublicationAbstractView.h"


@implementation PublicationDetailView

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    
	
	PublicationAbstractView *abstractView = [[PublicationAbstractView alloc] 
											 initWithNibName:@"PublicationAbstractView" 
											 bundle:[NSBundle mainBundle]];
	
	abstractView.title = @"Abstract";
	abstractView.tabBarItem.image = [UIImage imageNamed:@"179-notepad.png"];
		
	
	UITabBarController *tabController = [[UITabBarController alloc]init];
	tabController.view.frame = CGRectMake(0, 0, 320, 460);

	[tabController setViewControllers:[NSArray arrayWithObjects:abstractView, nil]];
	
	[abstractView release];
	[self.view addSubview:tabController.view];
	
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}



- (void)dealloc {
    [super dealloc];
}


@end
