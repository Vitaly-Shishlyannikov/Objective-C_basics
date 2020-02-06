//
//  main.m
//  test
//
//  Created by Vitaly_Shishlyannikov on 06/02/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FootballPlayer.h"
#import <objc/runtime.h>
#import <objc/message.h>

NSString* directory() {
    return [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingString:@"/footballer.plist"];
}

void writeMutableDictionaryFootballer(NSMutableDictionary *footballerDictionary) {
    NSError *error;
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:footballerDictionary requiringSecureCoding:YES error:&error];
    if (error) {
        NSLog(@"%@", error);
    }
    [data writeToFile:directory() atomically:YES];
    NSLog(@"Сохранено!");
}

FootballPlayer* readFootballer() {
    NSLog(@"Прочитано!");
    NSError *error;
    NSData *data = [NSData dataWithContentsOfFile:directory()];
    FootballPlayer *footballer = [NSKeyedUnarchiver unarchivedObjectOfClass:NSMutableDictionary.class fromData:data error:&error];
    if (error) {
        NSLog(@"%@", error);
    } else {
        return footballer;
    }
    return nil;
}

void printFootballer(FootballPlayer *footballer) {
    NSLog(@"%@", footballer);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FootballPlayer *footballer = [[FootballPlayer alloc] init];
        
        NSLog(@"Enter footballer's name: ");
        char name[40];
        scanf("%s", name);
        footballer.name = [NSString stringWithCString:name encoding:1];
        
        NSLog(@"Enter footballer's surname: ");
        char surname[40];
        scanf("%s", surname);
        footballer.surname = [NSString stringWithCString:surname encoding:1];
        
        NSLog(@"Enter footballer's country: ");
        char country[40];
        scanf("%s", country);
        footballer.country = [NSString stringWithCString:country encoding:1];
        
        NSLog(@"Enter footballer's age: ");
        char age[40];
        scanf("%s", age);
        footballer.age = [NSNumber numberWithInteger: [[NSString stringWithCString:age encoding:1] integerValue]];
    
        NSLog(@"created footballer");
        printFootballer(footballer);
        
        
        NSMutableDictionary *propertiesValues = [NSMutableDictionary new];
        unsigned int count;
        objc_property_t *properties = class_copyPropertyList([footballer class], &count);
        id (*id_objc_msgSend)(id, SEL) = (id (*)(id, SEL)) objc_msgSend;
        for (int i = 0; i < count; i++) {
            objc_property_t property = properties[i];
            const char *name = property_getName(property);
            const char *attributes = property_getAttributes(property);
            if (attributes[1] == '@') {
                NSString *selector = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
                SEL sel = sel_registerName([selector UTF8String]);
                NSObject *value = id_objc_msgSend(footballer, sel);
                propertiesValues[selector] = value.description;
            }
        }
        free(properties);
        
        writeMutableDictionaryFootballer(propertiesValues);
        
//        NSLog(@"%@",directory());
        
        FootballPlayer *loadedFootballer = readFootballer();
        NSLog(@"loaded footballer");
        printFootballer(loadedFootballer);
        
        
        //      пробуем получить ключ словаря с индексом 10, получаем exception, приложение не падает
        @try {
            id errorIndexKey = [propertiesValues allKeys][10];
        }
        @catch (NSException *exception) {
            NSLog(@"Exception caught with reason %@", exception);
        }
        @finally {
            NSLog(@"Finally condition");
        }
        
    }
    return 0;
}
