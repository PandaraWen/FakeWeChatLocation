//
//  FakeWeChatLocationManager.m
//  temp
//
//  Created by Pandara on 16/8/14.
//  Copyright © 2016年 Pandara. All rights reserved.
//

#import "FakeWeChatLocationManager.h"

@implementation FakeWeChatLocationManager

+ (FakeWeChatLocationManager *)shareManager {
    static dispatch_once_t onceToken;
    static FakeWeChatLocationManager *shareManager;
    dispatch_once(&onceToken, ^{
        shareManager = [[FakeWeChatLocationManager alloc] init];
    });
    
    return shareManager;
}

- (void)showSetLocationAlert {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Set Location" message:@"Default in Tokyo" preferredStyle:UIAlertControllerStyleAlert];
    
    //Latitude and longitude textField
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Latitude";
        textField.text = @"35.707013";
    }];
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Longitude";
        textField.text = @"139.730562";
    }];
    
    //Actions
    [alert addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSString *lat = alert.textFields[0].text;
        NSString *lng = alert.textFields[1].text;
        [[NSUserDefaults standardUserDefaults] setObject:lat forKey:@"PD_FAKE_LOCATION_LAT"];
        [[NSUserDefaults standardUserDefaults] setObject:lng forKey:@"PD_FAKE_LOCATION_LNG"];
    }]];
    
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
}

@end





















