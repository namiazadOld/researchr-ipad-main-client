//
//  ResearchrProxy.m
//  ResearchrMain
//
//  Created by Nami on 10/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ResearchrProxy.h"
#import "Publication.h"
#import "JSON.h"


@implementation ResearchrProxy

+(NSString*) url 
{
	return @"http://researchr.org/api";
}

-(NSString*) generateUrlPostfix: (NSString*)type action:(NSString*)action searchTerm:(NSString*)keyword
{
	keyword = [keyword stringByReplacingOccurrencesOfString:@" " withString:@"+"];
	NSString* result = [NSString stringWithFormat:@"%@/%@/%@/%@", [ResearchrProxy url], action, type, keyword];
	return result;
}

-(NSData*) callService: (NSString*)urlString
{
	NSURL* searchUrl = [NSURL URLWithString:urlString];
	NSMutableURLRequest *searchRequest = [NSMutableURLRequest requestWithURL:searchUrl];
	[searchRequest setHTTPMethod:@"GET"];
	NSURLResponse *response;
	NSError *error;
	return [NSURLConnection sendSynchronousRequest:searchRequest returningResponse:&response error:&error];
}

-(NSData*) search: (NSString*)type searchTerm:(NSString*)keyword
{	
	NSString* searchUrlString = [self generateUrlPostfix:type action:@"search" searchTerm:keyword];
	NSLog(searchUrlString);
	return [self callService:searchUrlString];
}

-(NSMutableArray*) searchPublication: (NSString*)keyword
{
	NSData* rawSearchResult = [self search:@"publication" searchTerm:keyword];
	
	SBJsonParser *parser =[[SBJsonParser alloc] init];
	NSString *content = [[NSString alloc] initWithData:rawSearchResult encoding:NSASCIIStringEncoding];
	NSDictionary *dictionary = [parser objectWithString:content];
	
	NSEnumerator *enumerator = [dictionary keyEnumerator];
	NSString* key;
	while (key = [enumerator nextObject]) {
		if ([key isEqualToString:@"result"])
			return [Publication MapToPublicationList:[dictionary objectForKey:key]];
	}
	
	return NULL;
}

@end
