//
//  CBCBrewDay.m
//  Brewery
//
//  Created by Sam Meadley on 23/12/2014.
//  Copyright (c) 2014 Sam Meadley. All rights reserved.
//

#import "CBCBrew.h"
#import "CBCBrewDay.h"

@interface CBCBrewDay ()

@property (strong, nonatomic, readonly) NSDate *date;

@end

@implementation CBCBrewDay

- (instancetype)initWithDate:(NSDate *)date
{
    self = [super init];
    if (self) {
        _date = date;
    }
    
    return self;
}

- (CBCBrew *)brewFromComponents:(CBCBrewComponents *)brewComponents
{
    return [[CBCBrew alloc] init];
}

@end
