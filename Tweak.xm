#import <UIKit/UIKit.h>

%hook UIApplication

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSLog(@"[Mostash] Tweak Loaded Successfully 🚀");

    // هنا يبدأ النظام حقك (Floating / VIP / Targets)
    
    return %orig;
}

%end
