//
//  ZPAlertViewTestViewController.m
//  ZPAlertViewTest
//
//  Created by Zacharias Pasternack on 7/23/11.
//  Copyright 2011 Fat Apps, LLC. All rights reserved.
//


#import "ZPAlertViewTestViewController.h"
#import "ZPAlertView.h"


@implementation ZPAlertViewTestViewController


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)doAlertView:(id)sender
{
	enum {
		ButtonIndexCancel = 0,
		ButtonIndexDoItNow,
		ButtonIndexDoItLater
	};
	
	ZPAlertView *anAlert = [[ZPAlertView alloc] initWithTitle:@"Warning!"
													  message:@"Would you like to perform a really lengthy operation?"
													 delegate:nil
											cancelButtonTitle:@"Nope"
											otherButtonTitles:@"Yeah, sure", @"Meh, maybe later", nil];
	anAlert.willPresentBlock = ^ {
		NSLog( @"willPresent!" );
	};
	anAlert.didPresentBlock = ^ {
		NSLog( @"didPresent!" );
	};	
	anAlert.didCancelBlock = ^ {
		NSLog( @"didCancel!" );
	};	
	anAlert.clickedButtonBlock = ^(NSInteger buttonIndex){
		switch( buttonIndex ) {
			case ButtonIndexDoItNow:
				NSLog( @"Clicked to perform lengthy operation..." );
				//[self performLengthyOperation];
				break;
			case ButtonIndexDoItLater:
				NSLog( @"Clicked to schedule lengthy operation..." );
				//[self scheduleLengthyOperationForLater];
				break;
		}
	};
	anAlert.willDismissBlock = ^(NSInteger buttonIndex){
		switch( buttonIndex ) {
			case ButtonIndexDoItNow:
				NSLog( @"Will dismiss and perform lengthy operation..." );
				//[self performLengthyOperation];
				break;
			case ButtonIndexDoItLater:
				NSLog( @"Will dismiss and schedule lengthy operation..." );
				//[self scheduleLengthyOperationForLater];
				break;
		}
	};
	anAlert.didDismissBlock = ^(NSInteger buttonIndex){
		switch( buttonIndex ) {
			case ButtonIndexDoItNow:
				NSLog( @"Did dismiss and perform lengthy operation..." );
				//[self performLengthyOperation];
				break;
			case ButtonIndexDoItLater:
				NSLog( @"Did dismiss and schedule lengthy operation..." );
				//[self scheduleLengthyOperationForLater];
				break;
		}
	};
	[anAlert show];
	[anAlert release];
}


- (IBAction)doAlertWithTextField:(id)sender
{
	ZPAlertView *alert = [[ZPAlertView alloc] initWithTitle:@"Hello!" 
													message:@"Please enter your name:\n\n\n"
												   delegate:nil 
										  cancelButtonTitle:nil
										  otherButtonTitles:@"OK", nil];
	
	UITextField *nameEntryField = [[UITextField alloc] initWithFrame:CGRectMake(12, 90, 260, 25)];
	nameEntryField.backgroundColor = [UIColor whiteColor];
	nameEntryField.keyboardType = UIKeyboardTypeAlphabet;
	nameEntryField.keyboardAppearance = UIKeyboardAppearanceAlert;
	nameEntryField.autocorrectionType = UITextAutocorrectionTypeNo;
	nameEntryField.clearButtonMode = UITextFieldViewModeWhileEditing;
	[alert addSubview:nameEntryField];
	[nameEntryField becomeFirstResponder];
	[nameEntryField release];
	
	alert.willDismissBlock = ^(NSInteger buttonIndex) {
		UIAlertView *anAlert = [[UIAlertView alloc] initWithTitle:@"Greetings!"
														  message:[NSString stringWithFormat:@"Hello, %@", nameEntryField.text]
														 delegate:nil
												cancelButtonTitle:nil
												otherButtonTitles:@"OK", nil];
		[anAlert show];
		[anAlert release];
	};
	[alert show];
	[alert release];
	
}
@end
