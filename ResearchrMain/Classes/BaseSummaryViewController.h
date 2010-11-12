//
//  BaseSummaryViewController.h
//  ResearchrMain
//
//  Created by Nami on 10/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseEntity.h"
#import "BaseDetailView.h"

@protocol DetailViewRequested<NSObject>

-(void) showDetail: (BaseDetailView*)detailView;

@end


@interface BaseSummaryViewController : UITableViewCell {
	BaseEntity* entity;
	id<DetailViewRequested> delegate;	
}

@property (nonatomic, retain) BaseEntity* entity;
@property (assign) id<DetailViewRequested> delegate;

-(void)initWithEntity:(BaseEntity*)entity;
-(float)getHeight;

@end
