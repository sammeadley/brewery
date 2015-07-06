//
//  CBCBrewDay.m
//  Brewery
//
//  Created by Sam Meadley on 23/12/2014.
//  Copyright (c) 2014 Sam Meadley. All rights reserved.
//

#import "CBCBrewDay.h"

@interface CBCBrewDay ()

@property (copy, nonatomic, readonly) NSDate *date;

@end

@implementation CBCBrewDay

- (instancetype)initWithDate:(NSDate *)date
{
    self = [super init];
    if (self) {
        _date = [date copy];
    }
    
    return self;
}

- (instancetype)init
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

- (CBCBrew *)brewFromComponents:(CBCBrewComponents *)brewComponents
{
#pragma message "Requires implementation."
    return nil;
}

@end
