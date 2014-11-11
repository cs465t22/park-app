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

@synthesize profileTable;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIColor *blue = [UIColor colorWithRed:14/255.0 green:51/255.0 blue:140/255.0 alpha:1];
    UIColor *orange = [UIColor colorWithRed:246/255.0 green:155/255.0 blue:0/255.0 alpha:1];
    
    [self.navigationController.navigationBar setBarTintColor:blue];
    
    [self.tabBarController.tabBar setTintColor:orange];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [[UITabBar appearance] setBarTintColor:blue];

    [profileTable setDelegate:self];
    [profileTable setDataSource:self];
    [profileTable setAllowsSelection:false];
    
    self.staticData = @[@"Nishant Nayudu", @"1-217-417-5000", @"nayudu2@illinois.edu", @"Steve", @"Lambhorgini Aventador", @"Jet Black"];
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    if(section == 0) {
        return @"Personal Information";
    } else if(section == 1) {
        return @"Car Information";
    } else {
        return @"";
    }
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section == 0) {
        return 0;
    } else {
        return 3;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UILabel *myLabel = [[UILabel alloc] init];
    myLabel.frame = CGRectMake(0, 0, self.view.frame.size.width, 30);
    myLabel.font = [UIFont systemFontOfSize:14];
    myLabel.textColor = [UIColor darkGrayColor];
    myLabel.textAlignment = UITextAlignmentCenter;
    myLabel.backgroundColor = [UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1];
    myLabel.contentMode = UIControlContentVerticalAlignmentBottom;
    myLabel.text = [self tableView:tableView titleForFooterInSection:section];
    
    UIView *footerView = [[UIView alloc] init];
    [footerView addSubview:myLabel];
    
    return footerView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [[UITableViewCell alloc] init];
    cell.frame = CGRectZero;
    cell.textLabel.font = [UIFont boldSystemFontOfSize:17];
    cell.textLabel.text = [self.staticData objectAtIndex:3*(indexPath.section - 1) + indexPath.row];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
