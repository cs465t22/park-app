//
//  PShareViewController.m
//  ParkApp
//
//  Created by Nishant Nayudu on 11/10/14.
//  Copyright (c) 2014 CS465. All rights reserved.
//

#import "PShareViewController.h"

@interface PShareViewController ()

@end

@implementation PShareViewController

@synthesize captureButton, albumButton, gridButton;
@synthesize imagePicker;
@synthesize hasLoadedCamera;

- (id)init {
    if (self = [super init]) {
        self.title = @"Camera";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    hasLoadedCamera = false;
}

- (void)viewDidAppear:(BOOL)animated {
    if (!hasLoadedCamera)
        [self performSelector:@selector(initiateCameraViewController) withObject:nil afterDelay:0.3];
}

- (void) initiateCameraViewController {
    self.imagePicker = [[UIImagePickerController alloc] init];
    
    imagePicker.delegate = self;
    imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    imagePicker.mediaTypes = @[(NSString *) kUTTypeImage];
    imagePicker.allowsEditing = NO;
    
    CGSize screenBounds = [UIScreen mainScreen].bounds.size;
    CGFloat cameraAspectRatio = 4.0f/3.0f;
    CGFloat camViewHeight = screenBounds.width * cameraAspectRatio;
    CGFloat scale = screenBounds.height / camViewHeight;
    
    imagePicker.cameraViewTransform = CGAffineTransformMakeTranslation(0, (screenBounds.height - camViewHeight) / 2.0);
    imagePicker.cameraViewTransform = CGAffineTransformScale(imagePicker.cameraViewTransform, scale, scale);
    [self presentViewController:imagePicker
                       animated:true
                     completion:^{
                         hasLoadedCamera = true;
                     }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL) launchCameraControllerFromViewController: (UIViewController*) controller usingDelegate: (id <UIImagePickerControllerDelegate, UINavigationControllerDelegate>) delegate {
    
    BOOL truefalse = [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]; //variable to check whether there is a camera available
    //if there is a camera, the delegate passed exists, and the controller passed exists, proceed on, otherwise don't go any further
    if (!truefalse || (delegate == nil) || (controller == nil)) {
        NSLog(@"no can do, delegate/camera/view controller doesn't exist!");
        return NO;
    }
    
    imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    imagePicker.allowsEditing = YES;
    imagePicker.delegate = delegate;
    
    [controller presentViewController:imagePicker animated:YES completion:nil];
    
    return truefalse;
}

-(void) imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:NULL];
    [self.navigationController popViewControllerAnimated:true];
}

-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    NSString *mediaType = [info objectForKey: UIImagePickerControllerMediaType];
    UIImage *imageToSave;
    if (CFStringCompare ((CFStringRef) mediaType, kUTTypeImage, 0)
        == kCFCompareEqualTo) {//if it's an image
    
        imageToSave = (UIImage *) [info objectForKey:
                                     UIImagePickerControllerOriginalImage]; //Assign the original image to originalImage
        
        // Save the image to the Camera Roll
        UIImageWriteToSavedPhotosAlbum (imageToSave, self, @selector(image: didFinishSavingWithError:contextInfo:), nil);
    }
}

-(void) image: (UIImage *) image didFinishSavingWithError: (NSError *) error contextInfo: (void *) contextInfo {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success"
                                                    message:@"Your image has been successfully sent for processing."
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    // the user clicked OK
    if (buttonIndex == 0) {
        [self dismissViewControllerAnimated:imagePicker completion:nil];
        [self.navigationController popViewControllerAnimated:true];
    }
}

@end
