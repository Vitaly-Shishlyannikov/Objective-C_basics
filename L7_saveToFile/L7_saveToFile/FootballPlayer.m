//
//  FootballPlayer.m
//  test
//
//  Created by Vitaly_Shishlyannikov on 06/02/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import "FootballPlayer.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation FootballPlayer

-(void) encodeWithCoder:(nonnull NSCoder *)coder {
    [coder encodeObject:self.name forKey:@"name"];
    [coder encodeObject:self.surname forKey:@"surname"];
    [coder encodeObject:self.country forKey:@"country"];
    [coder encodeObject:self.age forKey:@"age"];
}

- (nullable instancetype) initWithCoder:(nonnull NSCoder *)coder {
    if(self = [super init]) {
        self.name = [coder decodeObjectForKey:@"name"];
        self.surname = [coder decodeObjectForKey:@"surname"];
        self.country = [coder decodeObjectForKey:@"country"];
        self.age = [coder decodeObjectForKey:@"age"];
    }
    return self;
}

+(BOOL)supportsSecureCoding {
    return YES;
}

- (NSString *)description {
    NSMutableDictionary *values = [NSMutableDictionary new];
    unsigned int count;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    id (*id_objc_msgSend)(id, SEL) = (id (*)(id, SEL)) objc_msgSend;
    for (int i = 0; i < count; i++) {
        objc_property_t property = properties[i];
        const char *name = property_getName(property);
        const char *attributes = property_getAttributes(property);
        if (attributes[1] == '@') {
            NSString *selector = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
            SEL sel = sel_registerName([selector UTF8String]);
            NSObject *value = id_objc_msgSend(self, sel);
            values[selector] = value.description;
        }
    }
    free(properties);
    return [NSString stringWithFormat:@"%@: %@", self.class, values];
}

@end
