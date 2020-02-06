//
//  Flock.h
//  L5_BirdsFlock
//
//  Created by Vitaly_Shishlyannikov on 23/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bird.h"
#import "LeaderBird.h"

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject

- (void) composeWithLeader:(LeaderBird *)leader andBirds:(NSArray *)birds;

@property (nonatomic, strong) LeaderBird *leader;
@property (nonatomic, strong) NSArray *birds;

@end

NS_ASSUME_NONNULL_END
