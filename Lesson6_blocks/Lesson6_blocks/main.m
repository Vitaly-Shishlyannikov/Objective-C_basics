//
//  main.m
//  Lesson6_blocks
//
//  Created by Vitaly_Shishlyannikov on 30/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "CarInformation.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {

        NSOperationQueue *newQueue = [NSOperationQueue new];

        [newQueue addOperationWithBlock:^{
            [CarInformation printInformationCarModel:@"BMW" fuelType: gasoline productionYear:2000 hasHandcarriage:NO];
        }];

        [CarInformation printInformationCarModel:@"MAN" fuelType: diesel productionYear:1995 hasHandcarriage:YES];
        
        
    }

    return 0;
}
