//
//  Vehicle.h
//  L4_all_OOP_principles
//
//  Created by Vitaly_Shishlyannikov on 21/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIColor+Title.h"

NS_ASSUME_NONNULL_BEGIN

enum VehicleType {
    motorcar,
    motortruck,
    passengerBus
};

typedef enum VehicleType VehicleType;

@interface Vehicle : NSObject

@property (nonatomic, strong) NSString *model;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic) double weight;
@property (nonatomic) VehicleType type;

- (void) getDescription;

@end

NS_ASSUME_NONNULL_END
