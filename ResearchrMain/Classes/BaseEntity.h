//
//  BaseEntity.h
//  ResearchrMain
//
//  Created by Nami on 10/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseSummaryViewController.h"
#import "BaseListViewController.h"


@interface BaseEntity : NSObject {
	NSString *name;
}

@property (nonatomic, retain) NSString* name;

-(BaseSummaryViewController*) getSummaryView;
+(BaseListViewController*) getListView: (NSMutableArray*)list;


@end
