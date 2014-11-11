//
//  ForgotViewController.m
//  ParkApp
//
//  Created by Nishant Nayudu on 11/11/14.
//  Copyright (c) 2014 CS465. All rights reserved.
//

#import "ForgotViewController.h"

@interface ForgotViewController ()

@end

@implementation ForgotViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

-(IBAction)forgotPassword:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Request Sent"
                                                    message:@"You will receive an email containing instructions to reset your password shortly."
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    // the user clicked OK
    if (buttonIndex == 0) {
        [self dismissViewControllerAnimated:true completion:false];
    }
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return true;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
