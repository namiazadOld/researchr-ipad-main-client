//
//  BaseSummaryViewController.h
//  ResearchrMain
//
//  Created by Nami on 10/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface BaseSummaryViewController : UITableViewCell {
	float height;
}

@property (nonatomic, retain) float height;

-(void)initWithName:(NSString*)name;

@end
