//
//  DetailViewController.h
//  ResearchrMain
//
//  Created by Nami on 9/22/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UIPopoverControllerDelegate, UISplitViewControllerDelegate> {
    
    UIPopoverController *popoverController;
    UIToolbar *toolbar;
	UIView *currentView;
    
    id detailItem;
    UILabel *detailDescriptionLabel;
}

@property (nonatomic, retain) IBOutlet UIToolbar *toolbar;
@property (nonatomic, retain) IBOutlet UIView *currentView;




@end
