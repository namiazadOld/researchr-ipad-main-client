//
//  BasePresenter.m
//  ResearchrMain
//
//  Created by Nami on 11/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "BasePresenter.h"


@implementation BasePresenter

-(BaseListViewController*) getListView: (NSMutableArray*)list
{
	BaseListViewController *listController = [[BaseListViewController alloc] 
											  initWithNibName:@"BaseListViewController" 
											  bundle:[NSBundle mainBundle]];
	[listController initWithEntities:list];
	return listController;
}

-(BaseSummaryViewController*)getSummaryView: (BaseEntity*) entity
{
	BaseSummaryViewController *summaryController = [[BaseSummaryViewController alloc] 
													initWithNibName:@"BaseSummaryViewController" 
													bundle:[NSBundle mainBundle]];
	[summaryController initWithEntity:entity];
	return summaryController;
}

-(BaseDetailView*) getDetailView: (BaseEntity*)entity
{
	return NULL;
}



@end
