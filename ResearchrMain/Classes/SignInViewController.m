    //
//  SignInViewController.m
//  ResearchrMain
//
//  Created by Nami on 9/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SignInViewController.h"


@implementation SignInViewController

@synthesize delegate;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];

	self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc]
											  initWithBarButtonSystemItem:UIBarButtonSystemItemDone
											  target:self action:@selector(dismissViewOK:)]autorelease];
	
	self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]
											  initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
											  target:self action:@selector(dismissViewCancel:)]autorelease];
}



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

-(void) dismissViewOK:(id)sender
{
	//Calling corresponding web service to authenticate username and password. Do not forget authentication.
	
	if (self.delegate != NULL && [self.delegate respondsToSelector:@selector(dismissRequested:)])
	{
		[delegate dismissRequested:YES];
	}
}

-(void) dismissViewCancel:(id)sender
{
	if (self.delegate != NULL && [self.delegate respondsToSelector:@selector(dismissRequested:)])
	{
		[delegate dismissRequested:NO];
	}
}


- (void)dealloc {
    [super dealloc];
}


@end
