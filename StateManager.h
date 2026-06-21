#import "StateManager.h"

@implementation StateManager

+ (BOOL)isEnabled {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"enabled"];
}

+ (void)setEnabled:(BOOL)enabled {
    [[NSUserDefaults standardUserDefaults] setBool:enabled forKey:@"enabled"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
