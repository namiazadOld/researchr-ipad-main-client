//
//  ResearchrProxy.h
//  ResearchrMain
//
//  Created by Nami on 10/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ResearchrProxy : NSObject {
	
}

-(NSString*) generateUrlPostfix: (NSString*)type action: (NSString*)action searchTerm:(NSString*)keyword;
-(NSData*) search: (NSString*)type searchTerm:(NSString*)keyword;
-(NSData*) callService: (NSString*)urlString;
-(NSMutableArray*) searchPublication: (NSString*)keyword;

@end
