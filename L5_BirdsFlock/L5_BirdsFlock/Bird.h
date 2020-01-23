//
//  Bird.h
//  L5_BirdsFlock
//
//  Created by Vitaly_Shishlyannikov on 23/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

- (instancetype) initWithName: (NSString *)name;

@property (nonatomic,strong) NSString *name;

@end

NS_ASSUME_NONNULL_END
