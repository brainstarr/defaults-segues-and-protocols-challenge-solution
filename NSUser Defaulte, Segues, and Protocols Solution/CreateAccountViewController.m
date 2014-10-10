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
    [self.delegate didCreateAccount];
}

- (IBAction)createAccountButton:(id)sender {
    [self.delegate didCancel];
}
@end
