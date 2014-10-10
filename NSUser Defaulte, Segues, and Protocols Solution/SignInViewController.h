//
//  SignInViewController.h
//  NSUser Defaulte, Segues, and Protocols Solution
//
//  Created by Brian Starr on 10/10/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateAccountViewController.h"

@interface SignInViewController : UIViewController <CreateAccountDelegate>

- (IBAction)toCreateAccountButton:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *signInUserNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *signInPasswordTextField;

- (IBAction)logInButton:(id)sender;

@end
