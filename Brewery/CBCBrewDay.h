//
//  CBCBrewDay.h
//  Brewery
//
//  Created by Sam Meadley on 23/12/2014.
//  Copyright (c) 2014 Sam Meadley. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CBCBrew, CBCBrewComponents;

@interface CBCBrewDay : NSObject

- (instancetype)initWithDate:(NSDate *)date NS_DESIGNATED_INITIALIZER;

- (CBCBrew *)brewFromComponents:(CBCBrewComponents *)brewComponents;

@end
