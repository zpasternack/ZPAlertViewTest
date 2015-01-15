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

@property (nonatomic, strong) IBOutlet UIWindow* window;
@property (nonatomic, strong) IBOutlet ZPAlertViewTestViewController* viewController;

@end
