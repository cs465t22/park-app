//
//  SearchPage.h
//  ParkApp
//
//  Created by Shreya Garg on 11/9/14.
//  Copyright (c) 2014 CS465. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchPage : UIViewController <UITextFieldDelegate>

@property(strong, nonatomic) IBOutlet UITextField * searchField;

@end
