//
//  ViewItem.m
//  ResearchrMain
//
//  Created by Nami on 9/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ViewItem.h"


@implementation ViewItem

@synthesize description, controller;

-(ViewItem*)init: (NSString*) _description Controller: (UIViewController*) _controller
{
	self.description = _description;
	self.controller = _controller;
	
	return self;
}

@end
