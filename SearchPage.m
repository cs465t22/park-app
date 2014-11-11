//
//  SearchPage.m
//  ParkApp
//
//  Created by Shreya Garg on 11/9/14.
//  Copyright (c) 2014 CS465. All rights reserved.
//

#import "SearchPage.h"

@interface SearchPage ()

@end

@implementation SearchPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIColor *blue = [UIColor colorWithRed:14/255.0 green:51/255.0 blue:140/255.0 alpha:1];
    UIColor *orange = [UIColor colorWithRed:246/255.0 green:155/255.0 blue:0/255.0 alpha:1];
    
    [self.navigationController.navigationBar setBarTintColor:blue];
    
    [self.tabBarController.tabBar setTintColor:orange];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];}

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
