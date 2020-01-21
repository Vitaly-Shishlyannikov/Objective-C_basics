//
//  UIColor+Title.m
//  L4_all_OOP_principles
//
//  Created by Vitaly_Shishlyannikov on 21/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import "UIColor+Title.h"

@implementation UIColor (toStringTitle)

- (NSString *) toStringTitle {
    
    if (self == [UIColor blackColor]) {
        return @"black";
    } else if (self == [UIColor whiteColor]) {
        return @"white";
    } else if (self == [UIColor greenColor]) {
        return @"green";
    } else {
        return @"undefined color";
    }
}

@end
