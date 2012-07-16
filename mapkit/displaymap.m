//
//  displaymap.m
//  mapkit
//
//  Created by Feby Varghese on 7/16/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import "displaymap.h"

@implementation displaymap

@synthesize coordinate,title,subtitle;

-(void)dealloc
{
    [title release];
    [super dealloc];
}

@end
