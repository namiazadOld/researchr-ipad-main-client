//
//  DetailViewController.h
//  ResearchrMain
//
//  Created by Nami on 9/22/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SignInViewController.h"

@interface DetailViewController : UIViewController <UIPopoverControllerDelegate, UISplitViewControllerDelegate, NotifyParent> {
    
    UIPopoverController *popoverController;
    UIToolbar *toolbar;
	UIToolbar *bottomToolbar;
	UIView *currentView;
	UIView *container;
	
	UIBarButtonItem *buttonItemSignIn;
    
    id detailItem;
    UILabel *detailDescriptionLabel;
}

@property (nonatomic, retain) IBOutlet UIToolbar *toolbar;
@property (nonatomic, retain) IBOutlet UIToolbar *bottomToolbar;
@property (nonatomic, retain) IBOutlet UIView *currentView;
@property (nonatomic, retain) IBOutlet UIView *container;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *buttonItemSignIn;

-(IBAction) signIn: (id)sender;

@end
