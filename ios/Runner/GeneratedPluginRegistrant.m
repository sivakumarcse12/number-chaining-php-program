//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"
#import <admob_flutter/AdmobFlutterPlugin.h>
#import <audioplayers/AudioplayersPlugin.h>
#import <flutter_tts/FlutterTtsPlugin.h>
#import <path_provider/PathProviderPlugin.h>
#import <tts/TtsPlugin.h>
#import <url_launcher/UrlLauncherPlugin.h>

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [AdmobFlutterPlugin registerWithRegistrar:[registry registrarForPlugin:@"AdmobFlutterPlugin"]];
  [AudioplayersPlugin registerWithRegistrar:[registry registrarForPlugin:@"AudioplayersPlugin"]];
  [FlutterTtsPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterTtsPlugin"]];
  [FLTPathProviderPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTPathProviderPlugin"]];
  [TtsPlugin registerWithRegistrar:[registry registrarForPlugin:@"TtsPlugin"]];
  [FLTUrlLauncherPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTUrlLauncherPlugin"]];
}

@end
