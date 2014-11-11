//
//  RegistrationViewController.m
//  ParkApp
//
//  Created by Smit Patel on 11/10/14.
//  Copyright (c) 2014 CS465. All rights reserved.
//

#import "RegistrationViewController.h"
#import "RegistrationForm.h"

@interface RegistrationViewController ()

@end

@implementation RegistrationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.formController.form = [[RegistrationForm alloc] init];
}

-(IBAction)submitRegistrationForm:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations!"
                                                    message:@"Thank you for registering, you will be logged in now."
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    // the user clicked OK
    if (buttonIndex == 0) {
        [self.navigationController popToRootViewControllerAnimated:false];
        MainPage * lvc = [[MainPage alloc] init];
        [self.navigationController pushViewController:lvc animated:false];
    }
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

@end
