//
//  LeaderBird.h
//  L5_BirdsFlock
//
//  Created by Vitaly_Shishlyannikov on 23/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LeaderBird : NSObject

- (instancetype) initWIthSkill: (NSNumber *) controlledCountSkill;

@property (nonatomic, strong) NSNumber *controlledCountSkill;

@end

NS_ASSUME_NONNULL_END
