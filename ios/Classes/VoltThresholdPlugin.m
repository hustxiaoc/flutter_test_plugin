#import "VoltThresholdPlugin.h"
#if __has_include(<volt_threshold/volt_threshold-Swift.h>)
#import <volt_threshold/volt_threshold-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "volt_threshold-Swift.h"
#endif

@implementation VoltThresholdPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVoltThresholdPlugin registerWithRegistrar:registrar];
}
@end
