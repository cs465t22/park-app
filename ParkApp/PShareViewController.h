//
//  PShareViewController.h
//  ParkApp
//
//  Created by Nishant Nayudu on 11/10/14.
//  Copyright (c) 2014 CS465. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import <AVFoundation/AVFoundation.h>
#import "PreCameraViewController.h"

@interface PShareViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIAlertViewDelegate>

@property (strong, nonatomic) UIImagePickerController * imagePicker;
@property (strong, nonatomic) UIButton *captureButton;
@property (strong, nonatomic) UIButton *albumButton;
@property (strong, nonatomic) UIButton *gridButton;

@property(strong, nonatomic) NSMutableArray * albums;
@property(strong, nonatomic) UIView * drawerView;
@property(nonatomic) BOOL hasLoadedCamera;

-(void) image: (UIImage *) image didFinishSavingWithError: (NSError *) error contextInfo: (void *) contextInfo;

@end