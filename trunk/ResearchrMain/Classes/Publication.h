//
//  Publication.h
//  ResearchrMain
//
//  Created by Nami on 10/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseEntity.h"
#import "Author.h"



@interface Publication : BaseEntity {
	NSString* title;
	NSString* abstractContent;
	NSMutableArray *authors;
}

@property (nonatomic, retain) NSString* title;
@property (nonatomic, retain) NSString* abstractContent;
@property (nonatomic, retain) NSMutableArray* authors;


@end
