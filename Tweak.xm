@interface FBSystemService : NSObject

+(id)sharedInstance;
- (void)exitAndRelaunch:(bool)arg1;

@end


static void respring(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object,  CFDictionaryRef userInfo) {


[[%c(FBSystemService) sharedInstance] exitAndRelaunch:NO];


}

%ctor {
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(),
                                NULL,
                                (CFNotificationCallback)respring,
                                CFSTR("respringDevice"),
                                NULL,
                                CFNotificationSuspensionBehaviorDeliverImmediately);
}