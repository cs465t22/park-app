//
//  ParkApp_SearchData.m
//  ParkApp SearchData
//
//  Created by Kelsey Yuen on 11/11/14.
//  Copyright (c) 2014 Team Zenith. All rights reserved.
//

#import "Marker.h"

@interface Controller

NSMutableArray *spots;

@end

@implementation Controller

- (void) viewDidLoad {
    NSMutableArray *spots = [[NSMutableArray alloc] initWithCapacity:20];
}

- (IBAction)initStatic {
    Marker *mark01 = [[Marker alloc] init];
    mark01.coord = CLLocationCoordinate2DMake(40.111546, -88.220880);
    mark01.rate = 0.1;
    mark01.safety = 0.9;
    
    Marker *mark02 = [[Marker alloc] init];
    mark02.coord = CLLocationCoordinate2DMake(40.113190, -88.224364);
    mark02.rate = 0.5;
    mark02.safety = 1.0;
    
    Marker *mark03 = [[Marker alloc] init];
    mark03.coord = CLLocationCoordinate2DMake(40.109289, -88.224167);
    mark03.rate = 0.2;
    mark03.safety = 0.7;
    
    Marker *mark04 = [[Marker alloc] init];
    mark04.coord = CLLocationCoordinate2DMake(40.107250, -88.225734);
    mark04.rate = 0.1;
    mark04.safety = 0.5;
    
    Marker *mark05 = [[Marker alloc] init];
    mark05.coord = CLLocationCoordinate2DMake(40.112222, -88.229495);
    mark05.rate = 0.6;
    mark05.safety = 0.3;
    
    Marker *mark06 = [[Marker alloc] init];
    mark06.coord = CLLocationCoordinate2DMake(40.106441, -88.231538);
    mark06.rate = 0.8;
    mark06.safety = 0.4;
    
    Marker *mark07 = [[Marker alloc] init];
    mark07.coord = CLLocationCoordinate2DMake(40.105132, -88.229811);
    mark07.rate = 0.4;
    mark07.safety = 0.2;
    
    Marker *mark08 = [[Marker alloc] init];
    mark08.coord = CLLocationCoordinate2DMake(40.103277, -88.222359);
    mark08.rate = 0.6;
    mark08.safety = 0.1;
    
    Marker *mark09 = [[Marker alloc] init];
    mark09.coord = CLLocationCoordinate2DMake(40.100327, -88.231481);
    mark09.rate = 0.9;
    mark09.safety = 0.1;
    
    Marker *mark10 = [[Marker alloc] init];
    mark10.coord = CLLocationCoordinate2DMake(40.104011, -88.2231780);
    mark10.rate = 1.1;
    mark10.safety = 0.2;
    
    
    Marker *mark11 = [[Marker alloc] init];
    mark11.coord = CLLocationCoordinate2DMake(40.107261, -88.234560);
    mark11.rate = 2.1;
    mark11.safety = 0.4;
    
    Marker *mark12 = [[Marker alloc] init];
    mark12.coord = CLLocationCoordinate2DMake(40.109965, -88.232278);
    mark12.rate = 1.8;
    mark12.safety = 0.5;
    
    Marker *mark13 = [[Marker alloc] init];
    mark13.coord = CLLocationCoordinate2DMake(40.110985, -88.233273);
    mark13.rate = 1.3;
    mark13.safety = 0.1;
    
    Marker *mark14 = [[Marker alloc] init];
    mark14.coord = CLLocationCoordinate2DMake(40.110480, -88.230919);
    mark14.rate = 1.5;
    mark14.safety = 0.2;
    
    Marker *mark15 = [[Marker alloc] init];
    mark15.coord = CLLocationCoordinate2DMake(40.110989, -88.230625);
    mark15.rate = 0.9;
    mark15.safety = 0.3;
    
    Marker *mark16 = [[Marker alloc] init];
    mark16.coord = CLLocationCoordinate2DMake(40.111057, -88.229847);
    mark16.rate = 0.5;
    mark16.safety = 0.0;
    
    Marker *mark17 = [[Marker alloc] init];
    mark17.coord = CLLocationCoordinate2DMake(40.108438, -88.233096);
    mark17.rate = 2.1;
    mark17.safety = 0.1;
    
    Marker *mark18 = [[Marker alloc] init];
    mark18.coord = CLLocationCoordinate2DMake(40.108795, -88.231245);
    mark18.rate = 1.4;
    mark18.safety = 0.4;
    
    Marker *mark19 = [[Marker alloc] init];
    mark19.coord = CLLocationCoordinate2DMake(40.108494, -88.230678);
    mark19.rate = 3.8;
    mark19.safety = 0.9;
    
    Marker *mark20 = [[Marker alloc] init];
    mark20.coord = CLLocationCoordinate2DMake(40.115585, -88.226510);
    mark20.rate = 5.0;
    mark20.safety = 0.0;
    
    [spots addObject:mark01];
    [spots addObject:mark02];
    [spots addObject:mark03];
    [spots addObject:mark04];
    [spots addObject:mark05];
    [spots addObject:mark06];
    [spots addObject:mark07];
    [spots addObject:mark08];
    [spots addObject:mark09];
    [spots addObject:mark10];
    [spots addObject:mark11];
    [spots addObject:mark12];
    [spots addObject:mark13];
    [spots addObject:mark14];
    [spots addObject:mark15];
    [spots addObject:mark16];
    [spots addObject:mark17];
    [spots addObject:mark18];
    [spots addObject:mark19];
    [spots addObject:mark20];
}

@end