//
//  DisplayDeviceString.m
//  DeviceString
//
//  Created by jinal on 11/20/18.
//  Copyright © 2018 jinal. All rights reserved.
//

#import "DisplayDeviceString.h"
#import <sys/utsname.h>

@implementation DisplayDeviceString

+(void)displayDeviceString{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *deviceString = [NSString stringWithCString:systemInfo.machine
                                                encoding:NSUTF8StringEncoding];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Device String Name" message:deviceString preferredStyle:UIAlertControllerStyleAlert];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Device String Name";
        textField.text = deviceString;
    }];
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    }];
    [alertController addAction:confirmAction];
    [[[[[UIApplication sharedApplication] windows] objectAtIndex:0] rootViewController] presentViewController:alertController animated:true completion:nil];
}
@end
