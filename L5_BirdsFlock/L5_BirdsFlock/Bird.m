//
//  Bird.m
//  L5_BirdsFlock
//
//  Created by Vitaly_Shishlyannikov on 23/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import "Bird.h"

@implementation Bird

- (instancetype) initWithName: (NSString *)name {
    self = [super init];
    if (self) {
        [name retain];
        [name release];
        _name = name;
        NSLog(@"Create bird named %@", name);
    }
    return self;
}

- (void) dealloc {
    NSLog(@"Dealloc bird named %@", _name);
    [_name release];
    [super dealloc];
}

@end
