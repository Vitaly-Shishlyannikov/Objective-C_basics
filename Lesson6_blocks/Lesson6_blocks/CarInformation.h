//
//  CarInformation.h
//  Lesson6_blocks
//
//  Created by Vitaly_Shishlyannikov on 30/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum FuelType {
    gasoline,
    diesel
} FuelType;

@interface CarInformation : NSObject

+ (void)printInformationCarModel: (NSString*)model fuelType: (FuelType)type productionYear: (int)year hasHandcarriage: (BOOL)hasHandcarriage;

@end

NS_ASSUME_NONNULL_END
