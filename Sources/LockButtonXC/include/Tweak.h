/**
 * Copyright (c) Nightwind 2024
 */

#import <Foundation/Foundation.h>
#import <SpringBoard/SpringBoard.h>

API_AVAILABLE(ios(10))
@interface SBLockHardwareButtonActions : NSObject
- (void)performLongPressActions;
@end

API_AVAILABLE(ios(9))
@interface SBMainWorkspace : NSObject
+ (instancetype)sharedInstance;
- (void)presentPowerDownTransientOverlay API_AVAILABLE(ios(13));
@end

@interface SpringBoard (Undocumented)
+ (SpringBoard *)sharedApplication;
- (void)showPowerDownAlert __attribute__((availability(ios, introduced=10.0, obsoleted=13.0)));
@end