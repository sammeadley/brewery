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

#pragma mark - NSObject

- (NSString *)debugDescription
{
    return [ @{ NSStringFromSelector(@selector(identifier)) : self.identifier,
                NSStringFromSelector(@selector(hopVariety)) : self.hopVariety,
                NSStringFromSelector(@selector(maltVariety)) : self.maltVariety,
                NSStringFromSelector(@selector(yeastStrain)) : self.yeastStrain } description];
}

#pragma mark - NSSecureCoding

static NSString * const kIdentifierKey = @"identifier";
static NSString * const kHopVarietyKey = @"hopVariety";
static NSString * const kMaltVarietyKey = @"maltVariety";
static NSString * const kYeastStrainKey = @"yeastStrain";

+ (BOOL)supportsSecureCoding
{
    return YES;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.identifier forKey:kIdentifierKey];
    [coder encodeObject:self.hopVariety forKey:kHopVarietyKey];
    [coder encodeObject:self.maltVariety forKey:kMaltVarietyKey];
    [coder encodeObject:self.yeastStrain forKey:kYeastStrainKey];
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    return [self initWithIdentifier:[coder decodeObjectOfClass:[NSString class] forKey:kIdentifierKey]
                         hopVariety:[coder decodeObjectOfClass:[NSString class] forKey:kHopVarietyKey]
                        maltVariety:[coder decodeObjectOfClass:[NSString class] forKey:kMaltVarietyKey]
                        yeastStrain:[coder decodeObjectOfClass:[NSString class] forKey:kYeastStrainKey]];
}

@end
