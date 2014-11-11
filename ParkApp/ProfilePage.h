//
//  ProfilePage.h
//  ParkApp
//
//  Created by Shreya Garg on 11/9/14.
//  Copyright (c) 2014 CS465. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfilePage : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property(strong, nonatomic) IBOutlet UITableView *profileTable;
@property(strong, nonatomic) NSArray * staticData;
@end
