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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        // 2nd task
        int sum = calculate(Plus, 5, 3);
        int composition  = calculate(Multiply, 5, 3);
        int remainder = calculate(GetRemainder, 5, 3);
        
        NSLog(@"Result: \n sum = %i, \n composition = %i, \n remainder = %i", sum, composition, remainder);
        
    }
    return 0;
}

