//
//  SignInViewController.h
//  ResearchrMain
//
//  Created by Nami on 9/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NotifyParent<NSObject>

-(void) dismissRequested:(BOOL)isOK;

@end


@interface SignInViewController : UIViewController {
	id<NotifyParent> delegate;	
}

@property (assign) id<NotifyParent> delegate;

@end
