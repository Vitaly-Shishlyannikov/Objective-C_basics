//
//  main.m
//  L5_calculator
//
//  Created by Vitaly_Shishlyannikov on 20/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import <Foundation/Foundation.h>

enum CalcMethod {
    Plus,
    Minus,
    Multiply,
    DivideWhole,
    GetRemainder
};

typedef enum CalcMethod CalcMethod;

int calculate(CalcMethod method, int a, int b) {
    
    int resultInt;
    
    switch (method) {
        case Plus:
            resultInt = a + b;
            break;
        case Minus:
            resultInt = a - b;
            break;
        case Multiply:
            resultInt = a * b;
            break;
        case DivideWhole:
            resultInt = a / b;
            break;
        case GetRemainder:
            resultInt = a % b;
            break;
        default:
            return 0;
    }
    return resultInt;
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
    NSNumber* sum = [[NSNumber alloc] init];
    [sum release];
    sum = [NSNumber numberWithInt: calculate(Plus, 5, 3)];

    NSNumber* composition  = [[NSNumber alloc] init];
    [composition release];
    composition = [NSNumber numberWithInt: calculate(Multiply, 5, 3)];
    
    
    NSNumber* remainder = [[NSNumber alloc] init];
    [remainder release];
    remainder = [NSNumber numberWithInt: calculate(GetRemainder, 5, 3)];

    NSLog(@"Result: \n sum = %@, \n composition = %@, \n remainder = %@", sum, composition, remainder);
    
    }
    return 0;
}


