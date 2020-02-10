//
//  Flock.m
//  L5_BirdsFlock
//
//  Created by Vitaly_Shishlyannikov on 23/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import "Flock.h"

@implementation Flock

- (instancetype) init {
    self = [super init];
    if (self) {
        NSLog(@"Create Flock");
    }
    return self;
}

- (void) composeWithLeader:(LeaderBird *)leader andBirds:(NSArray *)birds {
    [leader retain];
    [leader release];
    _leader = leader;
    NSLog(@"Add leader to flock");
    
    [birds retain];
    [birds release];
    _birds = birds;
    for (Bird *bird in birds) {
        NSLog(@"Add bird named %@ to flock", bird.name);
    }
}

- (void) remove {
    NSLog(@"Remove leader and birds from flock");
    for (Bird *bird in _birds) {
        [bird release];
    }
    [_birds release];
    [_leader release];
}

- (void) dealloc {
    [self remove];
    NSLog(@"Dealloc flock");
    [super dealloc];
}

@end
