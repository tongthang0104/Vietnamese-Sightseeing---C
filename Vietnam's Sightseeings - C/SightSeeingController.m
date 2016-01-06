//
//  SightSeeingController.m
//  Vietnam's Sightseeings - C
//
//  Created by Thang H Tong on 11/30/15.
//  Copyright © 2015 Thang. All rights reserved.
//

#import "SightSeeingController.h"
#import "SightSeeing.h"

@implementation SightSeeingController

+ (NSArray *)sightSeeings
{
    SightSeeing *sapa = [[SightSeeing alloc]initWithName:@"SaPa Mountain" location:@"Northest Region of Vietnam" area:24.02 population:8975];
    SightSeeing *haNoi = [[SightSeeing alloc]initWithName:@"Ha Noi Capitol" location:@"North Region of Vietnam" area:3324.5 population:7087700];
    SightSeeing *haLongBay = [[SightSeeing alloc]initWithName:@"Ha Long Bay" location:@"In Capitol Ha Noi" area: 271.95 population:221580];
    SightSeeing *nhaTrang = [[SightSeeing alloc]initWithName:@"Nha Trang City" location:@"South Central of Vietnam" area:252.6 population:400000];
    SightSeeing *saigon = [[SightSeeing alloc]initWithName:@"Saigon City" location:@"South Region of Vietnam" area:2095.5 population:7981900];
    SightSeeing *phuQuoc = [[SightSeeing alloc]initWithName:@"Phu Quoc City" location:@"South Region of Vietnam" area:593.05 population:103000];
    SightSeeing *caMau = [[SightSeeing alloc]initWithName:@"Ca Mau City" location:@"South Region of Vietnam" area:2058 population:1200000];
    
    return @[sapa, haNoi ,haLongBay, nhaTrang, saigon, phuQuoc, caMau];
}


@end

