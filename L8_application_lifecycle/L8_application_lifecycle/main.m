//
//  main.m
//  L8_application_lifecycle
//
//  Created by Vitaly_Shishlyannikov on 10.02.2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
