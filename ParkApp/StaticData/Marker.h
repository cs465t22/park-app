//
//  Marker.h
//  ParkApp SearchData
//
//  Created by Kelsey Yuen on 11/11/14.
//  Copyright (c) 2014 Team Zenith. All rights reserved.
//

#ifndef ParkApp_SearchData_Marker_h
#define ParkApp_SearchData_Marker_h

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface Marker : NSObject {
    CLLocationCoordinate2D coord;
    NSNumber *rate;
    NSNumber *safety;
}

@property CLLocationCoordinate2D coord;
@property (retain) NSNumber *rate;
@property (retain) NSNumber *safety;

@end

#endif
