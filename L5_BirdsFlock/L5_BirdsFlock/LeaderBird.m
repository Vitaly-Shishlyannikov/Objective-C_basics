//
//  LeaderBird.m
//  L5_BirdsFlock
//
//  Created by Vitaly_Shishlyannikov on 23/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import "LeaderBird.h"

@implementation LeaderBird

- (instancetype) initWIthSkill:(NSNumber *)controlledCountSkill {
    self = [super init];
    if (self) {
        [controlledCountSkill retain];
        [controlledCountSkill release];
        _controlledCountSkill = controlledCountSkill;
        NSLog(@"Created leader with controlledCountSkill %@", controlledCountSkill);
    }
    return self;
}

- (void) dealloc {
    NSLog(@"Dealloc leader with controlledCountSkill %@", _controlledCountSkill);
    [_controlledCountSkill release];
    [super dealloc];
}

@end
