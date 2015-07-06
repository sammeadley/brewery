//
//  CBCBrewRecipe.m
//  Brewery
//
//  Created by Sam Meadley on 23/12/2014.
//  Copyright (c) 2014 Sam Meadley. All rights reserved.
//

#import "CBCBrewComponents.h"

@implementation CBCBrewComponents

- (instancetype)initWithIdentifier:(NSString *)identifier
                        hopVariety:(NSString *)hopVariety
                       maltVariety:(NSString *)maltVariety
                       yeastStrain:(NSString *)yeastStrain
{
    self = [super init];
    if (self) {
        _identifier = [identifier copy];
        _hopVariety = [hopVariety copy];
        _maltVariety = [maltVariety copy];
        _yeastStrain = [yeastStrain copy];
    }
    
    return self;
}

- (instancetype)init
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

@end
