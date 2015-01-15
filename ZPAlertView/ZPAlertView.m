//
//  ZPAlertView.m
//  AlertWithCompletion
//
//  Created by Zacharias Pasternack on 10/11/10.
//  Copyright 2010-2015 Fat Apps, LLC. All rights reserved.
//


#import "ZPAlertView.h"


@implementation ZPAlertView


- (void) show
{
	self.delegate = self;
	[super show];
}


- (void) willPresentAlertView:(UIAlertView *)alertView
{
	if( self.willPresentBlock != nil ) {
		self.willPresentBlock();
	}
}


- (void) didPresentAlertView:(UIAlertView *)alertView
{
	if( self.didPresentBlock != nil ) {
		self.didPresentBlock();
	}
}


- (void) alertViewCancel:(UIAlertView *)alertView
{
	if( self.didCancelBlock != nil ) {
		self.didCancelBlock();
	}
}


- (void) alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
	if( self.clickedButtonBlock != nil ) {
		self.clickedButtonBlock(buttonIndex);
	}
}


- (void) alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex
{
	if( self.willDismissBlock != nil ) {
		self.willDismissBlock(buttonIndex);
	}
}


- (void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
	if( self.didDismissBlock != nil ) {
		self.didDismissBlock(buttonIndex);
	}
}


@end
