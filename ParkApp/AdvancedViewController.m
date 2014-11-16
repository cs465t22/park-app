//
//  AdvancedViewController.m
//  ParkApp
//
//  Created by Nishant Nayudu on 11/10/14.
//  Copyright (c) 2014 CS465. All rights reserved.
//

#import "AdvancedViewController.h"
#import <GoogleMaps/GoogleMaps.h>
#import "StaticData/Controller.m"

@interface AdvancedViewController ()

@end

@implementation AdvancedViewController {
    GMSMapView *mapView_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIColor *blue = [UIColor colorWithRed:14/255.0 green:51/255.0 blue:140/255.0 alpha:1];
    [self.navigationController.navigationBar setBarTintColor:blue];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    
    // Google Maps Code
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.86
                                                            longitude:151.20
                                                                 zoom:6];
    mapView_ = [GMSMapView mapWithFrame:self.mapView.frame camera:camera];
    mapView_.myLocationEnabled = YES;
    self.mapView = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(-33.86, 151.20);
    marker.title = @"Sydney";
    marker.snippet = @"Australia";
    marker.map = mapView_;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
