//
//  Vehicle.m
//  L4_all_OOP_principles
//
//  Created by Vitaly_Shishlyannikov on 21/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

-(void)getDescription {
    NSLog(@"It is a %@ %@ of brand \"%@\". It weights %0.1f tons", [self.color toStringTitle], [self typeNameFrom:self.type], self.model, self.weight);
}

-(NSString *)typeNameFrom:(VehicleType) type {
    switch (type) {
        case motorcar:
            return @"car";
            break;
        case motortruck:
            return @"truck";
            break;
        case passengerBus:
            return @"bus";
            break;
    }
}

@end
