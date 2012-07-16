//
//  ViewController.h
//  mapkit
//
//  Created by Feby Varghese on 7/16/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "displaymap.h"

@class displaymap;

@interface ViewController : UIViewController <MKMapViewDelegate>
{
    IBOutlet MKMapView *mapview;
}

@property (nonatomic,retain)IBOutlet MKMapView *mapview;

@end
