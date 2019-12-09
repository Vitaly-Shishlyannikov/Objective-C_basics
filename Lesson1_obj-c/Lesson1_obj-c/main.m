//
//  main.m
//  Lesson1_obj-c
//
//  Created by Vitaly_Shishlyannikov on 29/11/2019.
//  Copyright © 2019 Vitaly_Shishlayannikov. All rights reserved.
//

#import <Foundation/Foundation.h>

void checkChar() {
    char charToCheck;
    printf("Введите букву для проверки:");
            scanf("%c", &charToCheck);
    if (((charToCheck >= 'a') && (charToCheck <= 'z')) || ((charToCheck >= 'A') && (charToCheck <= 'Z'))) {
        NSLog(@"Буква %c входит в английский алфавит", charToCheck);
    } else {
        NSLog(@"Данный сомвол не входит в английский алфавит");
    }
}

int addition(int a, int b) {
    return a + b;
}

int multiplication(int a, int b) {
    return a * b;
}


int calculate(NSString *method, int a, int b) {
    
    if ([method isEqualToString:@"+"]) {
        return a + b;
    } else if ([method isEqualToString:@"-"]) {
        return a - b;
    } else if ([method isEqualToString:@"*"]) {
        return a * b;
    } else if ([method isEqualToString:@"/"]) {
        return a / b;
    } else if ([method isEqualToString:@"%"]) {
        return a % b;
    } else {
        NSLog(@"Функция не знает переданный метод");
        return 0;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        checkChar();
        
        int sum = addition(3, 5);
        int composition = multiplication(3, 5);
        NSLog(@"Result: \n sum = %i, \n composition = %i", sum, composition);
    }
    return 0;
}
