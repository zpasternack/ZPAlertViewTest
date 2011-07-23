//
//  ZPAlertViewTestAppDelegate.h
//  ZPAlertViewTest
//
//  Created by Bradley Lindauer on 7/23/11.
//  Copyright 2011 WildPackets, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZPAlertViewTestViewController;

@interface ZPAlertViewTestAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ZPAlertViewTestViewController *viewController;

@end
