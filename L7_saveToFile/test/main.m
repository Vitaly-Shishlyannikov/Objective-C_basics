//
//  main.m
//  test
//
//  Created by Vitaly_Shishlyannikov on 06/02/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FootballPlayer.h"

NSString* directory() {
    return [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingString:@"/footballer.plist"];
}

void writeFootballer(FootballPlayer *footballer) {
    NSError *error;
    //    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:student];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:footballer requiringSecureCoding:YES error:&error];
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
    FootballPlayer *footballer = [NSKeyedUnarchiver unarchivedObjectOfClass:FootballPlayer.class fromData:data error:&error];
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
        scanf(" %s", name);
        
        footballer.name = [NSString stringWithCString:name encoding:1];
        footballer.surname = @"Polo";
        NSLog(@"created footballer");
        printFootballer(footballer);
        
        writeFootballer(footballer);
        
        NSLog(@"%@",directory());
        
        FootballPlayer *loadedFootballer = readFootballer();
        NSLog(@"loaded footballer");
        printFootballer(loadedFootballer);
    }
    return 0;
}
