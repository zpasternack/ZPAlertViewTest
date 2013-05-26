//
//  ZPAlertViewTestAppDelegate.h
//  ZPAlertViewTest
//
//  Created by Zacharias Pasternack on 7/23/11.
//  Copyright 2011 Fat Apps, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZPAlertViewTestViewController;

@interface ZPAlertViewTestAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow* window;
@property (nonatomic, retain) IBOutlet ZPAlertViewTestViewController* viewController;

@end
