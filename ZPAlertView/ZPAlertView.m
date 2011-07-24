//
//  ZPAlertView.m
//  AlertWithCompletion
//
//  Created by Zacharias Pasternack on 10/11/10.
//  Copyright 2010 Fat Apps, LLC. All rights reserved.
//

#import "ZPAlertView.h"

@implementation ZPAlertView

@synthesize willPresentBlock;
@synthesize didPresentBlock;
@synthesize didCancelBlock;
@synthesize clickedButtonBlock;
@synthesize willDismissBlock;	
@synthesize didDismissBlock;

- (void) show {
	self.delegate = self;
	[super show];
}

- (void) dealloc {
	[willPresentBlock release];
	[didPresentBlock release];
	[didCancelBlock release];
	[clickedButtonBlock release];
	[willDismissBlock release];
	[didDismissBlock release];
	
	[super dealloc];
}

- (void) willPresentAlertView:(UIAlertView *)alertView {
	if( willPresentBlock != nil ) {
		willPresentBlock();
	}
}

- (void) didPresentAlertView:(UIAlertView *)alertView {
	if( didPresentBlock != nil ) {
		didPresentBlock();
	}
}

- (void) alertViewCancel:(UIAlertView *)alertView {
	if( didCancelBlock != nil ) {
		didCancelBlock();
	}
}

- (void) alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if( clickedButtonBlock != nil ) {
		clickedButtonBlock(buttonIndex);
	}
}

- (void) alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex {
	if( willDismissBlock != nil ) {
		willDismissBlock(buttonIndex);
	}
}

- (void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
	if( didDismissBlock != nil ) {
		didDismissBlock(buttonIndex);
	}
}

@end
