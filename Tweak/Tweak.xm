#import "FakeWeChatLocationManager.h"

%hook CLLocationManager
- (void)startUpdatingLocation {
    CGFloat lat = [[[NSUserDefaults standardUserDefaults] objectForKey:@"PD_FAKE_LOCATION_LAT"] doubleValue];
    CGFloat lng = [[[NSUserDefaults standardUserDefaults] objectForKey:@"PD_FAKE_LOCATION_LNG"] doubleValue];
    if (lat < 0.1 || lng < 0.1) {
        lat = 35.707013;
        lng = 139.730562;
    }
    
    CLLocation *tokyoLocation = [[CLLocation alloc] initWithLatitude:lat longitude:lng];

    CLLocation *cantonLocation = [[CLLocation alloc] initWithLatitude:23.127444 longitude:113.257217];

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.delegate locationManager:self didUpdateToLocation:tokyoLocation fromLocation:cantonLocation];
    });
#pragma clang diagnostic pop
}
%end

%hook MicroMessengerAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    %orig;

    [[FakeWeChatLocationManager shareManager] showSetLocationAlert];
    
    return YES;
}
%end
