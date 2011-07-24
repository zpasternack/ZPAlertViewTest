//
//  ZPAlertViewTestAppDelegate.m
//  ZPAlertViewTest
//
//  Created by Zacharias Pasternack on 7/23/11.
//  Copyright 2011 Fat Apps, LLC. All rights reserved.
//

#import "ZPAlertViewTestAppDelegate.h"
#import "ZPAlertViewTestViewController.h"

@implementation ZPAlertViewTestAppDelegate

@synthesize window;
@synthesize viewController;

- (void)dealloc
{
	[window release];
	[viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	self.window.rootViewController = self.viewController;
	[self.window makeKeyAndVisible];
    return YES;
}

@end
