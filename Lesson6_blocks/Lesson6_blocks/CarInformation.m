//
//  CarInformation.m
//  Lesson6_blocks
//
//  Created by Vitaly_Shishlyannikov on 30/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import "CarInformation.h"

// 1
NSString* (^hello)(void) = ^ {
    return @"Привет, друг!";
};

// 1
NSString* (^addModelWord)(NSString*) = ^(NSString* model) {
    return [NSString stringWithFormat:@"марки %@", model] ;
};

// 3
int (^age)(int, int) = ^ (int prodYear, int currentYear) {
    int age = currentYear - prodYear;
    return age;
};

// 4
NSString* (^fuelType)(FuelType) = ^ (FuelType type) {
    switch (type) {
        case gasoline:
            return @"бензиновый";
            break;
        case diesel:
            return @"дизельный";
            break;
    }
};

// 5
NSString* (^handcarriage)(BOOL) = ^(BOOL hasHandcarriage) {
    if (hasHandcarriage) {
        return @"есть прицеп";
    } else {
        return @"нет прицепа";
    }
};



@implementation CarInformation

+ (void)printInformationCarModel: (NSString*)model fuelType: (FuelType)type productionYear: (int)prodYear hasHandcarriage: (BOOL)hasHandcarriage {
    
    __block int currentYear = 0;
    
    // 6
    void (^getCurrentYear)(void) = ^ {
        NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:[NSDate date]];
        NSInteger year = [components year];
        currentYear = (int)year;
    };
    
    getCurrentYear();
    
    
    NSString *helloPr = hello();
    NSString *modelPr = addModelWord(model);
    int agePr = age(prodYear, currentYear);
    NSString *fuelTypePr = fuelType(type);
    NSString *handcarriagePr = handcarriage(hasHandcarriage);
    
    
    NSLog(@"\n%@\nЭто автомобиль %@, его возраст - %d лет, тип двигателя - %@, %@",  helloPr, modelPr, agePr, fuelTypePr, handcarriagePr);
   
}

@end
