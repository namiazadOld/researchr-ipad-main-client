//
//  BaseListViewController.h
//  ResearchrMain
//
//  Created by Nami on 10/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseSummaryViewController.h"


@interface BaseListViewController : UITableViewController {
	NSMutableArray* entityList;
	NSMutableArray* summaries;
	id containerControl;
	
}

@property (nonatomic, retain) NSMutableArray* entityList;
@property (nonatomic, retain)NSMutableArray* summaries;
@property (nonatomic, retain)id containerControl;

-(void) initWithEntities: (NSMutableArray*) entities;
-(BaseSummaryViewController*) getSummaryForIndex: (int)row;

@end
