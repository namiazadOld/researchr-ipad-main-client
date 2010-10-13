//
//  Publication.h
//  ResearchrMain
//
//  Created by Nami on 10/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Publication : NSObject {
	NSString* title;
	NSString* abstractContent;
}

@property (nonatomic, retain) NSString* title;
@property (nonatomic, retain) NSString* abstractContent;

@end
