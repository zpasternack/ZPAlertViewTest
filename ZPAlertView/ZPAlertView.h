//
//  ZPAlertView.h
//  AlertWithCompletion
//
//  Created by Zacharias Pasternack on 10/11/10.
//  Copyright 2010-2015 Fat Apps, LLC. All rights reserved.
//


@import Foundation;


typedef void (^WillPresentBlock)(void);
typedef void (^DidPresentBlock)(void);
typedef void (^DidCancelBlock)(void);
typedef void (^ClickedButtonBlock)(NSInteger);
typedef void (^WillDismissBlock)(NSInteger);
typedef void (^DidDismissBlock)(NSInteger);


@interface ZPAlertView : UIAlertView <UIAlertViewDelegate>

@property (nonatomic, copy) WillPresentBlock willPresentBlock;
@property (nonatomic, copy) DidPresentBlock didPresentBlock;
@property (nonatomic, copy) DidCancelBlock didCancelBlock;
@property (nonatomic, copy) ClickedButtonBlock clickedButtonBlock;
@property (nonatomic, copy) WillDismissBlock willDismissBlock;	
@property (nonatomic, copy) DidDismissBlock didDismissBlock;

@end
