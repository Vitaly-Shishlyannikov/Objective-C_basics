//
//  main.m
//  L4_all_OOP_principles
//
//  Created by Vitaly_Shishlyannikov on 21/01/2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "BlackBMW.h"
#import "WhiteScania.h"
#import "GreenIkarus.h"


void printDecription(Vehicle *vehicle) {
    [vehicle getDescription];
}

void createVehicles() {
    
    BlackBMW *car = [[BlackBMW alloc] init];
    car.model = @"BMW";
    car.color = [UIColor blackColor];
    car.weight = 1.5;
    car.type = motorcar;
    printDecription(car);


    WhiteScania *truck = [[WhiteScania alloc] init];
    truck.model = @"Scania";
    truck.color = [UIColor whiteColor];
    truck.weight = 9.63;
    truck.type = motortruck;
    printDecription(truck);

    GreenIkarus *bus = [[GreenIkarus alloc] init];
    bus.model = @"Ikarus";
    bus.color = [UIColor greenColor];
    bus.weight = 11;
    bus.type = passengerBus;
    printDecription(bus);
}

int main(int argc, char * argv[]) {
    @autoreleasepool {
        createVehicles();
    }
    return 0;
}
