//
//  BaseEntity.m
//  ResearchrMain
//
//  Created by Nami on 10/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "BaseEntity.h"


@implementation BaseEntity

@synthesize name;

+(BaseListViewController*) getListView: (NSMutableArray*)list
{
	BaseListViewController *listController = [[BaseListViewController alloc] 
											  initWithNibName:@"BaseListViewController" 
											  bundle:[NSBundle mainBundle]];
	[listController initWithEntities:list];
	return listController;
}

-(BaseSummaryViewController*)getSummaryView
{
	BaseSummaryViewController *summaryController = [[BaseSummaryViewController alloc] 
													initWithNibName:@"BaseSummaryViewController" 
													bundle:[NSBundle mainBundle]];
	[summaryController initWithName:self.name];
	return summaryController;
}


@end
