//
//  BasePresenter.h
//  ResearchrMain
//
//  Created by Nami on 11/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseSummaryViewController.h"
#import "BaseListViewController.h"
#import "BaseDetailView.h"
#import "BaseEntity.h"


@interface BasePresenter : NSObject {

}

-(BaseSummaryViewController*) getSummaryView: (BaseEntity*)entity;
-(BaseListViewController*) getListView: (NSMutableArray*)list;
-(BaseDetailView*) getDetailView: (BaseEntity*)entity;

@end
