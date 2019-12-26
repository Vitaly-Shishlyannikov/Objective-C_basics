//
//  main.m
//  Lesson1_obj-c
//
//  Created by Vitaly_Shishlyannikov on 29/11/2019.
//  Copyright © 2019 Vitaly_Shishlayannikov. All rights reserved.
//

#import <Foundation/Foundation.h>

// 2nd task
enum CalcMethod {
    Plus,
    Minus,
    Multiply,
    DivideWhole,
    GetRemainder
};

typedef enum CalcMethod CalcMethod;

int calculate(CalcMethod method, int a, int b) {
    
    switch (method) {
        case Plus:
            return a + b;
            break;
        case Minus:
            return a - b;
            break;
        case Multiply:
            return a * b;
            break;
        case DivideWhole:
            return a / b;
            break;
        case GetRemainder:
            return a % b;
            break;
        default:
            return 0;
    }
}

// 3rd task
enum Gender {
    Male,
    Female
};

typedef enum Gender Gender;

// метод для получения текстового значения Gender
NSString* genderText(Gender gender) {
    NSString *result = nil;
    switch (gender) {
        case Male:
            result = @"Male";
            break;
        case Female:
            result = @"Female";
            break;
        default:
            return 0;
    }
    return result;
};

struct Human {
    NSString *name;
    NSInteger age;
    Gender gender;
};


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 1st task
        NSArray *planets = @[@"Earth", @"Mars", @"Jupiter"];
        
        for (NSNumber *planet in planets) {
            NSLog(@"%@", planet);
        }
        
        
        // 2nd task
        int sum = calculate(Plus, 5, 3);
        int composition  = calculate(Multiply, 5, 3);
        int remainder = calculate(GetRemainder, 5, 3);
        
        NSLog(@"Result: \n sum = %i, \n composition = %i, \n remainder = %i", sum, composition, remainder);
        
        
        // 3rd task
        struct Human man;
        man.name = @"Jim Beam";
        man.age = 35;
        man.gender = Male;
        
        struct Human woman = {@"Sara Connor", 42, Female};
        
        NSLog(@"\nFirst human has name %@, age %li, gender %@. \nSecond human has name %@, age %li, gender %@.", man.name, (long)man.age, genderText(man.gender), woman.name, (long)woman.age, genderText(woman.gender));
    }
    return 0;
}
