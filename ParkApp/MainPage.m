//
//  MainPage.m
//  ParkApp
//
//  Created by Shreya Garg on 11/9/14.
//  Copyright (c) 2014 CS465. All rights reserved.
//

#import "MainPage.h"

@interface MainPage ()

@end

@implementation MainPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIColor *blue = [UIColor colorWithRed:14/255.0 green:51/255.0 blue:140/255.0 alpha:1];
    UIColor *orange = [UIColor colorWithRed:246/255.0 green:155/255.0 blue:0/255.0 alpha:1];
    [self.navigationController.navigationBar setBarTintColor:blue];
    [self.tabBarController.tabBar setTintColor:orange];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];

    [self.userName setDelegate:self];
    [self.password setDelegate:self];
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
