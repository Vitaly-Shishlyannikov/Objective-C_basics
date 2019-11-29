//
//  main.m
//  Lesson1_obj-c
//
//  Created by Vitaly_Shishlyannikov on 29/11/2019.
//  Copyright © 2019 Vitaly_Shishlayannikov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int first = 0;
        int second = 0;
        printf("First number:");
        scanf("%d", &first);
        printf("Second number:");
        scanf("%d", &second);
        NSLog(@"\nСумма = %d, \nРазность = %d, \nПроизведение = %d, \nЧастное от целочисленного деления = %d, \nОстаток от деления = %d", first + second, first - second, first * second, first / second, first % second);
        
        int a,b,c;
        printf("Введите 3 числа через пробел:");
        scanf("%d%d%d", &a, &b, &c);
        if ((a > b && a < c) || (a > b && a < c))
            NSLog(@"Среднее число = %d", a);
        else if ((b > a && b < c) || ( b > a && b < c))
            NSLog(@"Среднее число = %d", b);
        else if ((c > a && c < b) || ( a > c && b < c))
            NSLog(@"Среднее число = %d", c);
        else NSLog(@"Среди введенных чисел нет среднего");
    }
    return 0;
}
