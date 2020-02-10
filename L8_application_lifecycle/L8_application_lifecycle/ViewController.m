//
//  ViewController.m
//  L8_application_lifecycle
//
//  Created by Vitaly_Shishlyannikov on 10.02.2020.
//  Copyright © 2020 Vitaly_Shishlayannikov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"Контроллер был загружен");
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSLog(@"Контроллер будет отображен на экране");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSLog(@"Контроллер был отображен");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    NSLog(@"Конроллер будет закрыт");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    NSLog(@"Контроллер был закрыт");
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    NSLog(@"Экран был повернут");
}


@end
