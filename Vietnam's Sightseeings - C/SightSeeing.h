//
//  SightSeeing.h
//  Vietnam's Sightseeings - C
//
//  Created by Thang H Tong on 11/30/15.
//  Copyright © 2015 Thang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SightSeeing : NSObject

-(instancetype)initWithName: (NSString *)name location: (NSString *)location area: (float)area population: (float)population;


@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSString *location;
@property (nonatomic, readonly) float area;
@property (nonatomic, readonly) float population;
@property (nonatomic, readonly) NSString *imageName;


@end
