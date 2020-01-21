//
//  Student.m
//  Lesson4_Obj-C
//
//  Created by Vitaly_Shishlyannikov on 15/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithName: (NSString *)name
                     surname:(NSString *)surname
                         age:(NSNumber *)age {
    self = [super init];
    if (self) {
        self.name = name;
        self.surname = surname;
        self.fullName = [NSString stringWithFormat: @"%@ %@", name, surname];
        _age = age;
    }
    return self;
}

- (NSString *)description {
    NSLog(@"Student %@ is %@ years old", self.fullName, self.age);
    return @"";
}

- (void)increaseAge {
    _age = [NSNumber numberWithInt: ([_age intValue] + 1)];
}

@end
