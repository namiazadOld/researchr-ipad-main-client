//
//  AuthorPresenter.m
//  ResearchrMain
//
//  Created by Nami on 11/16/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AuthorPresenter.h"
#import "AuthorSummaryView.h";



@implementation AuthorPresenter

//implementation of base class to return summary view
-(BaseSummaryViewController*)getSummaryView: (BaseEntity*) entity
{
	NSArray* topLevelObjects = [[NSBundle mainBundle]loadNibNamed:@"AuthorSummaryView" owner:nil options:nil];
	for (id currentObject in topLevelObjects)
	{
		if ([currentObject isKindOfClass:[UITableViewCell class]])
		{
			AuthorSummaryView* summary = (AuthorSummaryView*)currentObject;
			[summary initWithEntity:entity];
			return summary;
		}
	}	
	
	return NULL;
}

@end
