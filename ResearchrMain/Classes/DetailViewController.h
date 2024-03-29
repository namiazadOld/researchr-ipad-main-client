//
//  DetailViewController.h
//  ResearchrMain
//
//  Created by Nami on 9/22/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SignInViewController.h"
#import "BaseSummaryViewController.h"

@interface DetailViewController : UIViewController <UIPopoverControllerDelegate, UISplitViewControllerDelegate, NotifyParent, DetailViewRequested, UISearchBarDelegate, UITextFieldDelegate> {
    
    UIPopoverController *popoverController;
    UIToolbar *toolbar;
	UIToolbar *bottomToolbar;
	UIView *currentView;
	UIView *container;
	UISearchBar *searchBar;

	
	UIBarButtonItem *buttonItemSignIn;
    
    id detailItem;
    UILabel *detailDescriptionLabel;
}

@property (nonatomic, retain) IBOutlet UIToolbar *toolbar;
@property (nonatomic, retain) IBOutlet UIToolbar *bottomToolbar;
@property (nonatomic, retain) IBOutlet UIView *currentView;
@property (nonatomic, retain) IBOutlet UIView *container;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *buttonItemSignIn;
@property (nonatomic, retain) IBOutlet UISearchBar *searchBar;



-(IBAction) signIn: (id)sender;
-(void) recursiveParser: (NSString*)key date:(id)value;
-(void) showDetail: (BaseDetailView*)detailView;

@end
