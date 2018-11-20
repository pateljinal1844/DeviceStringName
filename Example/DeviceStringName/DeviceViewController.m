//
//  DeviceViewController.m
//  DeviceStringName
//
//  Created by pateljinal1844 on 11/20/2018.
//  Copyright (c) 2018 pateljinal1844. All rights reserved.
//

#import "DeviceViewController.h"
#import "DisplayDeviceString.h"

@interface DeviceViewController ()

@end

@implementation DeviceViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [DisplayDeviceString displayDeviceString];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
