//
//  BaseListViewController.h
//  ResearchrMain
//
//  Created by Nami on 10/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface BaseListViewController : UITableViewController {
	NSMutableArray* entityList;
}

@property (nonatomic, retain) NSMutableArray* entityList;

-(void) initWithEntities: (NSMutableArray*) entities;

@end
