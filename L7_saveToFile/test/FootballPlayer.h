//
//  FootballPlayer.h
//  test
//
//  Created by Vitaly_Shishlyannikov on 06/02/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FootballPlayer : NSObject <NSSecureCoding>

@property (class, readonly) BOOL supportsSecureCoding;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSNumber *age;

@end

NS_ASSUME_NONNULL_END
