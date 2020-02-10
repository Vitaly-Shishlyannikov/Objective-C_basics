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
    
    __block NSString *helloPr = @"";
    __block NSString *modelPr = @"";
    __block NSString *fuelTypePr = @"";
    __block NSString *handcarriagePr = @"";
    __block int agePr = 0;
    
    __block int currentYear = 0;
    
    
    dispatch_queue_t utilityQueue = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0);
    dispatch_queue_t userInteractiveQueue = dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0);
    
    
    // 6
    void (^getCurrentYear)(void) = ^ {
        NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:[NSDate date]];
        NSInteger year = [components year];
        currentYear = (int)year;
    };
    
    
    dispatch_async(userInteractiveQueue, ^ {
        helloPr = hello();
    });

    dispatch_sync(utilityQueue, ^ {
        modelPr = addModelWord(model);
    });
    
    dispatch_sync(userInteractiveQueue, ^{
        getCurrentYear();
    });

    dispatch_sync(userInteractiveQueue, ^{
        agePr = age(prodYear, currentYear);
    });

    dispatch_sync(utilityQueue, ^{
        fuelTypePr = fuelType(type);
    });
    
    dispatch_sync(userInteractiveQueue, ^{
        handcarriagePr = handcarriage(hasHandcarriage);
    });
    
    
    NSLog(@"\n%@\nЭто автомобиль %@, его возраст - %d лет, тип двигателя - %@, %@",  helloPr, modelPr, agePr, fuelTypePr, handcarriagePr);
    
}

@end
