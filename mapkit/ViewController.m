//
//  ViewController.m
//  mapkit
//
//  Created by Feby Varghese on 7/16/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import "ViewController.h"
#import "displaymap.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mapview;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    
//    [mapview setMapType:MKMapTypeStandard];
//    [mapview setZoomEnabled:YES];
//    [mapview setScrollEnabled:YES];
//    MKCoordinateRegion region = { {0.0, 0.0 }, { 0.0, 0.0 } };
//    region.center.latitude = 22.569722 ;
//    region.center.longitude = 88.369722;
//    region.span.longitudeDelta = 0.01f;
//    region.span.latitudeDelta = 0.01f;
//    [mapview setRegion:region animated:YES];
//    
//    [mapview setDelegate:self];
//    
//    displaymap *ann = [[displaymap alloc] init];
//    ann.title = @" Kolkata";
//    ann.subtitle = @"Mahatma Gandhi Road";
//    ann.coordinate = region.center;
//    [mapview addAnnotation:ann];
    
    
    
    [mapview setMapType:MKMapTypeStandard];
    [mapview setZoomEnabled:YES];
    [mapview setScrollEnabled:YES];
    MKCoordinateRegion region = { {0.0, 0.0 }, { 0.0, 0.0 } };
    region.center.latitude = 22.569722 ;
    region.center.longitude = 88.369722;
    region.span.longitudeDelta = 0.01f;
    region.span.latitudeDelta = 0.01f;
    [mapview setRegion:region animated:YES];
    
    [mapview setDelegate:self];
    
    displaymap *ann = [[displaymap alloc] init];
    ann.title = @" Kolkata";
    ann.subtitle = @"Mahatma Gandhi Road";
    ann.coordinate = region.center;
    [mapview addAnnotation:ann];
    
}

-(MKAnnotationView *)mapView:(MKMapView *)mV viewForAnnotation:(id <MKAnnotation>)annotation
{
    MKPinAnnotationView *pinView = nil;
    if(annotation != mapview.userLocation)
    {
        static NSString *defaultPinID = @"com.invasivecode.pin";
        pinView = (MKPinAnnotationView *)[mapview dequeueReusableAnnotationViewWithIdentifier:defaultPinID];
        if ( pinView == nil ) pinView = [[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:defaultPinID] autorelease];
        
        pinView.pinColor = MKPinAnnotationColorRed;
        pinView.canShowCallout = YES;
        pinView.animatesDrop = YES;
    }
    else {
        [mapview.userLocation setTitle:@"I am here"];
    }
    return pinView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
