//
//  CBCBrewRecipe.h
//  Brewery
//
//  Created by Sam Meadley on 23/12/2014.
//  Copyright (c) 2014 Sam Meadley. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface CBCBrewComponents : NSObject <NSSecureCoding>

@property (copy, nonatomic) NSString *identifier;
@property (copy, nonatomic) NSString *hopVariety;
@property (copy, nonatomic) NSString *maltVariety;
@property (copy, nonatomic) NSString *yeastStrain;

- (instancetype)initWithIdentifier:(NSString *)identifier
                        hopVariety:(NSString *)hopVariety
                       maltVariety:(NSString *)maltVariety
                       yeastStrain:(NSString *)yeastStrain NS_DESIGNATED_INITIALIZER;

- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
