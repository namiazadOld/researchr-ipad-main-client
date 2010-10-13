//
//  PublicationSummaryView.h
//  ResearchrMain
//
//  Created by Nami on 10/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Publication.h"



@interface PublicationSummaryView : BaseSummaryViewController {
	UILabel *labelTitle;
	UITextView* textViewAbstract;
}

@property(nonatomic, retain) IBOutlet UILabel *labelTitle;
@property(nonatomic, retain) IBOutlet UITextView *textViewAbstract;


-(void) initWithPublication:(Publication*)publication;

@end
