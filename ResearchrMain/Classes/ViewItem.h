//
//  ViewItem.h
//  ResearchrMain
//
//  Created by Nami on 9/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ViewItem : NSObject {
	NSString* description;
	UIViewController* controller;
}

@property (nonatomic, retain) NSString* description;
@property (nonatomic, retain) UIViewController* controller;

-(ViewItem*)init: (NSString*) _description Controller: (UIViewController*) _controller;


@end
