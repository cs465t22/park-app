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
#import <GoogleMaps/GoogleMaps.h>

@interface Marker : NSObject {
	GMSMarker *marker;
  NSNumber *rate;
  NSNumber *safety;
}

@property (nonatomic, retain) GMSMarker *marker;
@property (nonatomic, retain) NSNumber *rate;
@property (nonatomic, retain) NSNumber *safety;

@end

#endif
