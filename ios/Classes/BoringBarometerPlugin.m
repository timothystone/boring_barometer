#import "BoringBarometerPlugin.h"
#if __has_include(<boring_barometer/boring_barometer-Swift.h>)
#import <boring_barometer/boring_barometer-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "boring_barometer-Swift.h"
#endif

@implementation BoringBarometerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBoringBarometerPlugin registerWithRegistrar:registrar];
}
@end
