//
//  main.m
//  L5_BirdsFlock
//
//  Created by Vitaly_Shishlyannikov on 22/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Bird.h"
#import "LeaderBird.h"
#import "Flock.h"

int main(int argc, char * argv[]) {
    
    Flock *flock = [[Flock alloc] init];
    
    Bird *bird1 = [[Bird alloc] initWithName:@"FirstBird"];
    Bird *bird2 = [[Bird alloc] initWithName:@"SecondBird"];
    Bird *bird3 = [[Bird alloc] initWithName:@"ThirdBird"];
    Bird *bird4 = [[Bird alloc] initWithName:@"FourthBird"];
    
    NSArray *birds = [[NSArray alloc] initWithObjects:bird1, bird2, bird3, bird4, nil];
    
    LeaderBird *leader = [[LeaderBird alloc] initWIthSkill:@4];
    
    [flock composeWithLeader:leader andBirds:birds];
    
    [flock release];
    
    return 0;
}
