//
//  ProfileTableViewController.m
//  ParkApp
//
//  Created by Nishant Nayudu on 11/11/14.
//  Copyright (c) 2014 CS465. All rights reserved.
//

#import "ProfileForm.h"


@implementation ProfileForm

//because we want to rearrange how this form
//is displayed, we've implemented the fields array
//which lets us dictate exactly which fields appear
//and in what order they appear

- (NSArray *)fields
{
    return @[
             
             @{FXFormFieldKey: @"name", FXFormFieldHeader: @"Personal Details",
               @"textField.autocapitalizationType": @(UITextAutocapitalizationTypeWords)},
             
             @"phone",
             @"email",
             
             @{FXFormFieldKey: @"Car name", FXFormFieldHeader: @"Car Details",
               @"textField.autocapitalizationType": @(UITextAutocapitalizationTypeWords)},
             
             @"Car model",
             @"Car color",
             
             
             @{FXFormFieldTitle: @"Submit", FXFormFieldHeader: @"", FXFormFieldAction: @"submitRegistrationForm:"},
             
             ];
}

@end
