//
//  Author.h
//  ResearchrMain
//
//  Created by Nami on 11/9/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Author : NSObject {
	NSString *alias;
	NSString *fullname;
	NSString *key;
	NSString *url;
}

@property (nonatomic, retain) NSString* alias;
@property (nonatomic, retain) NSString* fullname;
@property (nonatomic, retain) NSString* key;
@property (nonatomic, retain) NSString* url;

@end
