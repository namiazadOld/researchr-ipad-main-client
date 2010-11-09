//
//  Author.m
//  ResearchrMain
//
//  Created by Nami on 11/9/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Author.h"


@implementation Author

@synthesize alias, fullname, url, key;

+(NSMutableArray*) MapToAuthorList: (NSArray*) rawList
{
	NSMutableArray *authors = [[NSMutableArray alloc] init];
	
	NSEnumerator *enumerator = [rawList objectEnumerator];
	
	NSDictionary *rawAuthor;
	while (rawAuthor = [enumerator nextObject])
	{
		Author* author = [[Author alloc] init];
		
		NSEnumerator *dicEnumerator = [rawAuthor keyEnumerator];
		NSString *rawFieldKey;
		while (rawFieldKey = [dicEnumerator nextObject])
		{
			id value = [rawAuthor objectForKey:rawFieldKey];
			
			if ([rawFieldKey isEqualToString:@"key"])
				[author setKey:value];
			else if ([rawFieldKey isEqualToString: @"fullname"])
				[author setFullname:value];
			else if ([rawFieldKey isEqualToString: @"alias"])
				[author setAlias:value];
			else if ([rawFieldKey isEqualToString: @"url"])
				[author setUrl:value];
		}
		[authors addObject:author];
	}
	
	return authors;
}


@end
