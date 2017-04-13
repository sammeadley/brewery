//
//  CBCBrewDay.h
//  Brewery
//
//  Created by Sam Meadley on 23/12/2014.
//  Copyright (c) 2014 Sam Meadley. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@class CBCBrew, CBCBrewComponents;

@interface CBCBrewDay : NSObject

- (instancetype)initWithDate:(NSDate *)date NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;

- (CBCBrew *)brewFromComponents:(CBCBrewComponents *)brewComponents;

@end

NS_ASSUME_NONNULL_END
