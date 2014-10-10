//
//  CreateAccountViewController.m
//  NSUser Defaulte, Segues, and Protocols Solution
//
//  Created by Brian Starr on 10/10/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "CreateAccountViewController.h"

@interface CreateAccountViewController ()

@end

@implementation CreateAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)createAccountCancelButton:(id)sender {
    [self.delegate didCancel];
}

- (IBAction)createAccountButton:(id)sender {
    if ((self.createAccountUserNameTextField.text.length == 0) || (self.createAccountPasswordTextField.text.length == 0)) {
        UIAlertView *missingTextError = [[UIAlertView alloc]initWithTitle:@"Signup Error" message:@"either password of username field is blank" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [missingTextError show];
    }
    else if (![self.createAccountPasswordTextField.text isEqualToString:self.createAccountPasswordConfirmTextField.text]){
        UIAlertView *passwordMismatchError = [[UIAlertView alloc]initWithTitle:@"Password Error" message:@"Password fields do not match" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [passwordMismatchError show];
    }
    else
    {
        [[NSUserDefaults standardUserDefaults]setObject:self.createAccountUserNameTextField.text forKey:USER_NAME];
        [[NSUserDefaults standardUserDefaults]setObject:self.createAccountPasswordTextField.text forKey:USER_PASSWORD];
        [[NSUserDefaults standardUserDefaults]synchronize];
        [self.delegate didCreateAccount];
    }
}
@end
