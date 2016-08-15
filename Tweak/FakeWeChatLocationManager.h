//
//  FakeWeChatLocationManager.h
//  temp
//
//  Created by Pandara on 16/8/14.
//  Copyright © 2016年 Pandara. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface FakeWeChatLocationManager : NSObject

+ (FakeWeChatLocationManager *)shareManager;
- (void)showSetLocationAlert;

@end
