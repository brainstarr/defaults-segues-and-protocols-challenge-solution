//
//  SignInViewController.m
//  NSUser Defaulte, Segues, and Protocols Solution
//
//  Created by Brian Starr on 10/10/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([sender isKindOfClass:[UIBarButtonItem class]])
        if ([segue.destinationViewController isKindOfClass:[CreateAccountViewController class]])
        {
            CreateAccountViewController *destinationVC = segue.destinationViewController;
            destinationVC.delegate = self;
        }
}


- (IBAction)toCreateAccountButton:(id)sender {
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:sender];
    
}


- (IBAction)logInButton:(id)sender {
    NSString *username = [[NSUserDefaults standardUserDefaults]objectForKey:USER_NAME];
    NSString *password = [[NSUserDefaults standardUserDefaults]objectForKey:USER_PASSWORD];
    
    if ([self.signInUserNameTextField.text isEqualToString:username] && [self.signInPasswordTextField.text isEqualToString:password]) {
        [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
    }
    else
    {
        UIAlertView *loginAlert = [[UIAlertView alloc]initWithTitle:@"Login Error" message:@"username or password are incorrect" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [loginAlert show];
    }
}

#pragma mark - CreateAccountView Delegate

-(void)didCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)didCreateAccount
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
