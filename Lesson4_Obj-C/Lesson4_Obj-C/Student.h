//
//  Student.h
//  Lesson4_Obj-C
//
//  Created by Vitaly_Shishlyannikov on 15/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong, readonly) NSNumber *age;

- (instancetype)initWithName: (NSString *)name
                     surname:(NSString *)surname
                         age:(NSNumber *)age;

- (void) increaseAge;

@end

NS_ASSUME_NONNULL_END
