//
//  ParkApp_SearchData.m
//  ParkApp SearchData
//
//  Created by Kelsey Yuen on 11/11/14.
//  Copyright (c) 2014 Team Zenith. All rights reserved.
//

#import "Marker.h"
#import <stdlib.h>

@interface Controller

NSMutableArray *spots;

@end

@implementation Controller

- (id) init {
    srand48(time(0));

    NSMutableArray *spots = [[NSMutableArray alloc] initWithCapacity:20];

    for (Marker *curMark in spots) {
        curMark = [[Marker alloc] init];
        curMark.marker.title = @"Parking Spot";
        curMark.marker.snippet = @"Champaign-Urbana";
        curMark.rate = arc4random(6);
        curMark.safety = drand48();

        [spots addObject:curMark];
    }

    [[spots objectAtIndex:0].marker.position = CLLocationCoordinate2DMake(40.111546, -88.220880);
    [[spots objectAtIndex:1].marker.position = CLLocationCoordinate2DMake(40.113190, -88.224364);
    [[spots objectAtIndex:2].marker.position = CLLocationCoordinate2DMake(40.109289, -88.224167);
    [[spots objectAtIndex:3].marker.position = CLLocationCoordinate2DMake(40.107250, -88.225734);
    [[spots objectAtIndex:4].marker.position = CLLocationCoordinate2DMake(40.112222, -88.229495);
    [[spots objectAtIndex:5].marker.position = CLLocationCoordinate2DMake(40.106441, -88.231538);
    [[spots objectAtIndex:6].marker.position = CLLocationCoordinate2DMake(40.105132, -88.229811);
    [[spots objectAtIndex:7].marker.position = CLLocationCoordinate2DMake(40.103277, -88.222359);
    [[spots objectAtIndex:8].marker.position = CLLocationCoordinate2DMake(40.100327, -88.231481);
    [[spots objectAtIndex:9].marker.position = CLLocationCoordinate2DMake(40.104011, -88.2231780);
    [[spots objectAtIndex:10].marker.position = CLLocationCoordinate2DMake(40.107261, -88.234560);
    [[spots objectAtIndex:11].marker.position = CLLocationCoordinate2DMake(40.109965, -88.232278);
    [[spots objectAtIndex:12].marker.position = CLLocationCoordinate2DMake(40.110985, -88.233273);
    [[spots objectAtIndex:13].marker.position = CLLocationCoordinate2DMake(40.110480, -88.230919);
    [[spots objectAtIndex:14].marker.position = CLLocationCoordinate2DMake(40.110989, -88.230625);
    [[spots objectAtIndex:15].marker.position = CLLocationCoordinate2DMake(40.111057, -88.229847);
    [[spots objectAtIndex:16].marker.position = CLLocationCoordinate2DMake(40.108438, -88.233096);
    [[spots objectAtIndex:17].marker.position = CLLocationCoordinate2DMake(40.108795, -88.231245);
    [[spots objectAtIndex:18].marker.position = CLLocationCoordinate2DMake(40.108494, -88.230678);
    [[spots objectAtIndex:19].marker.position = CLLocationCoordinate2DMake(40.115585, -88.226510);
}

- (void) dealloc {
    [spots release]
    [super dealloc];
}

@end