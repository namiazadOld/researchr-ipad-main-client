//
//  BaseEntity.m
//  ResearchrMain
//
//  Created by Nami on 10/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "BaseEntity.h"


@implementation BaseEntity

+(BaseListViewController*) getListView: (NSMutableArray*)list
{
	BaseListViewController *listController = [[BaseListViewController alloc] 
											  initWithNibName:@"BaseListViewController" 
											  bundle:[NSBundle mainBundle]];
	[listController initWithEntities:list];
	return listController;
}


@end
