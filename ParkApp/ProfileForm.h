//
//  ProfileTableViewController.h
//  ParkApp
//
//  Created by Nishant Nayudu on 11/11/14.
//  Copyright (c) 2014 CS465. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FXForms.h"

typedef NS_ENUM(NSInteger, Gender)
{
    GenderMale = 0,
    GenderFemale,
    GenderOther
};


typedef NS_OPTIONS(NSInteger, Interests)
{
    InterestComputers = 1 << 0,
    InterestSocializing = 1 << 1,
    InterestSports = 1 << 2
};


typedef NS_OPTIONS(NSInteger, ServicePlan)
{
    ServicePlanMicro = 0,
    ServicePlanNormal,
    ServicePlanMaxi
};


@interface ProfileForm : NSObject <FXForm>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *phone;
@property (nonatomic, copy) NSString *email;

@property (nonatomic, copy) NSString *carName;
@property (nonatomic, copy) NSString *carModel;
@property (nonatomic, copy) NSString *carColor;

@end
