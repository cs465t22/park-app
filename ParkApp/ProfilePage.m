//
//  ProfilePage.m
//  ParkApp
//
//  Created by Shreya Garg on 11/9/14.
//  Copyright (c) 2014 CS465. All rights reserved.
//

#import "ProfilePage.h"

@interface ProfilePage ()

@end

@implementation ProfilePage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor redColor]];

    [self.tabBarController.tabBar setTintColor:[UIColor redColor]];



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
