//
//  SightSeeing.m
//  Vietnam's Sightseeings - C
//
//  Created by Thang H Tong on 11/30/15.
//  Copyright © 2015 Thang. All rights reserved.
//

#import "SightSeeing.h"

@implementation SightSeeing

-(instancetype)initWithName:(NSString *)name location:(NSString *)location area:(float)area population:(float)population
{
    self = [super init];
    if (self) {
        _name = [name copy];
        _imageName = [name lowercaseString];
        _location = location;
        _population = population;
        _area = area;
    }
    return self;
}

@end
