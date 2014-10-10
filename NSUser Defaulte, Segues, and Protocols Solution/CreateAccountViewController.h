//
//  CreateAccountViewController.h
//  NSUser Defaulte, Segues, and Protocols Solution
//
//  Created by Brian Starr on 10/10/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <UIKit/UIKit.h>

#define USER_NAME @"username"
#define USER_PASSWORD @"password"

@protocol CreateAccountDelegate <NSObject>

-(void)didCancel;
-(void)didCreateAccount;

@end

@interface CreateAccountViewController : UIViewController

@property (weak, nonatomic) id <CreateAccountDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *createAccountUserNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *createAccountPasswordTextField;
@property (strong, nonatomic) IBOutlet UITextField *createAccountPasswordConfirmTextField;

- (IBAction)createAccountCancelButton:(id)sender;

- (IBAction)createAccountButton:(id)sender;

@end
