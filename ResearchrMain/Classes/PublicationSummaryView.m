    //
//  PublicationSummaryView.m
//  ResearchrMain
//
//  Created by Nami on 10/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PublicationSummaryView.h"
#import "BaseEntity.h"


@implementation PublicationSummaryView

@synthesize labelTitle, textViewAbstract;

-(void)initWithEntity:(BaseEntity*)entity
{
	Publication* publication = entity;
	[self setEntity:publication];
	
	labelTitle.text = publication.title;
	
	float x = labelTitle.frame.origin.x;
	float y = labelTitle.frame.origin.y + labelTitle.frame.size.height;
	
	CGRect frame = CGRectMake(x, y, labelTitle.frame.size.width, labelTitle.frame.size.height);
	UILabel* label = [[UILabel alloc]initWithFrame:frame];
	label.textColor = UIColor.blackColor;

	
	if (publication.authors != NULL)
	{
		for (int i = 0; i < [publication.authors count]; i++) {
			if (i == 0)
			{
				[label setText:[[publication.authors objectAtIndex:i] alias]];
			}
			else
			{
				[label setText:[NSString stringWithFormat:@"%@, %@", label.text, [[publication.authors objectAtIndex:i] alias]]];
			}
		}	
	}
	
	[self.contentView addSubview:label];

}

-(float)getHeight
{
	//TODO orientation dependent
	if (self.entity == NULL)
		return 0;
	Publication* publication = self.entity;
	if (publication.authors == NULL)
		return 47;
	return 2*47;
}

-(IBAction) detailViewClicked:(id)sender
{
	if (self.delegate != NULL && [self.delegate respondsToSelector:@selector(showDetail:)])
	{
		PublicationDetailView *detailView = [[PublicationDetailView alloc] 
											 initWithNibName:@"PublicationDetailView" 
											 bundle:[NSBundle mainBundle]];

		[delegate showDetail:detailView];
	}
}


/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
