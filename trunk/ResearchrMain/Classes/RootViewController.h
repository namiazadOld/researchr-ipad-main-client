//
//  RootViewController.h
//  ResearchrMain
//
//  Created by Nami on 9/22/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>


@class DetailViewController;

@interface RootViewController : UITableViewController{
    DetailViewController *detailViewController;
	NSMutableDictionary *mainItems;
}

@property (nonatomic, retain) IBOutlet DetailViewController *detailViewController;
@property (nonatomic, retain) NSMutableDictionary *mainItem;

@end
