//
//  PublicationPresenter.m
//  ResearchrMain
//
//  Created by Nami on 11/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PublicationPresenter.h"


@implementation PublicationPresenter

//implementation of base class to return summary view
-(BaseSummaryViewController*)getSummaryView: (BaseEntity*) entity
{
	NSArray* topLevelObjects = [[NSBundle mainBundle]loadNibNamed:@"PublicationSummaryView" owner:nil options:nil];
	for (id currentObject in topLevelObjects)
	{
		if ([currentObject isKindOfClass:[UITableViewCell class]])
		{
			PublicationSummaryView* summary = (PublicationSummaryView*)currentObject;
			[summary initWithEntity:entity];
			return summary;
		}
	}	
	
	return NULL;
}

-(BaseDetailView*) getDetailView: (BaseEntity*)entity
{
	return NULL;
}

@end
