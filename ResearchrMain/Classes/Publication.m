//
//  Publication.m
//  ResearchrMain
//
//  Created by Nami on 10/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Publication.h"
#import "JSON.h"
#import "PublicationSummaryView.h"



@implementation Publication

@synthesize title, abstractContent, authors;

//implementation of base class to return summary view
-(BaseSummaryViewController*)getSummaryView
{
	NSLog([self title]);
		
	NSArray* topLevelObjects = [[NSBundle mainBundle]loadNibNamed:@"PublicationSummaryView" owner:nil options:nil];
	for (id currentObject in topLevelObjects)
	{
		if ([currentObject isKindOfClass:[UITableViewCell class]])
		{
			PublicationSummaryView* summary = (PublicationSummaryView*)currentObject;
			[summary initWithPublication:self];
			return summary;
		}
	}	
}


+(NSMutableArray*) MapToPublicationList: (NSArray*) rawList
{
	NSMutableArray *publications = [[NSMutableArray alloc] init];
	
	NSEnumerator *enumerator = [rawList objectEnumerator];
	
	NSDictionary *rawPublication;
	while (rawPublication = [enumerator nextObject])
	{
		Publication* publication = [[Publication alloc] init];
		
		NSEnumerator *dicEnumerator = [rawPublication keyEnumerator];
		NSString *rawFieldKey;
		while (rawFieldKey = [dicEnumerator nextObject])
		{
			id value = [rawPublication objectForKey:rawFieldKey];
			if ([rawFieldKey isEqualToString:@"title"])
				[publication setTitle:value];
			else if ([rawFieldKey isEqualToString: @"abstract"])
				[publication setAbstractContent:value];
			else if ([rawFieldKey isEqualToString: @"authors"])
				[publication setAuthors:[Author MapToAuthorList:value]];
		}
		[publications addObject:publication];
	}
	
	return publications;
}

@end
