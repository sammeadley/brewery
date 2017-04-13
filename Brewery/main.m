//
//  main.m
//  Brewery
//
//  Created by Sam Meadley on 23/12/2014.
//  Copyright (c) 2014 Sam Meadley. All rights reserved.
//

@import Foundation;

#import "CBCBrew.h"
#import "CBCBrewComponents.h"
#import "CBCBrewDay.h"

int main(int __unused argc, const char * __unused argv[]) {
    @autoreleasepool {
        
        CBCBrewDay *brewDay = [[CBCBrewDay alloc] initWithDate:[NSDate date]];
        
        CBCBrewComponents *brewComponents = [[CBCBrewComponents alloc] initWithIdentifier:@"Pale Ale"
                                                                               hopVariety:@"Fuggles"
                                                                              maltVariety:@"Maris Otter"
                                                                              yeastStrain:@"WLP002"];
        
        NSData *archivedData = [NSKeyedArchiver archivedDataWithRootObject:brewComponents];
        
        // TODO: Write archive to disk, drink some beer.
        
        
        
        // ... some weeks pass until another order comes in ...
        
        CBCBrewComponents *unarchived = [NSKeyedUnarchiver unarchiveObjectWithData:archivedData];
        
        // Phew, still got it!
        
        CBCBrew *brew = [brewDay brewFromComponents:unarchived];
        
        NSLog(@"%@", [brew debugDescription]);
    }
    
    return 0;
}
