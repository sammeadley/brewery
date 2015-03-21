//
//  main.m
//  Brewery
//
//  Created by Sam Meadley on 23/12/2014.
//  Copyright (c) 2014 Sam Meadley. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CBCBrew.h"
#import "CBCBrewComponents.h"
#import "CBCBrewDay.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        CBCBrewDay *brewDay = [[CBCBrewDay alloc] initWithDate:[NSDate date]];
        
        CBCBrewComponents *brewComponents = [[CBCBrewComponents alloc] initWithIdentifier:@"Pale Ale"
                                                                               hopVariety:@"Fuggles"
                                                                              maltVariety:@"Maris Otter"
                                                                              yeastStrain:@"WLP002"];
        CBCBrew *brew = [brewDay brewFromComponents:brewComponents];

    }
    return 0;
}
