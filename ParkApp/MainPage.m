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
    UIColor *color = [UIColor colorWithRed:246/255.0 green:155/255.0 blue:0/255.0 alpha:1];
    [self.navigationController.navigationBar setBarTintColor:color];

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
