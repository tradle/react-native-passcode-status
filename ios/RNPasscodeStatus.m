//
//  RNPasscodeStatus.m
//  RNPasscodeStatus
//
//  Created by Mark Vayngrib on 12/27/15.
//  Copyright © 2015 Tradle, Inc. All rights reserved.
//

#import "RNPasscodeStatus.h"
#import "UIDevice+PasscodeStatus.h"

@implementation RNPasscodeStatus

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(get:(RCTResponseSenderBlock)callback)
{
  UIDevice *device = [UIDevice currentDevice];
  if (!device.passcodeStatusSupported) {
    callback(@[@"passcode status not supported"]);
  } else {
    NSString* status = [RNPasscodeStatus getPasscodeStatusString:device.passcodeStatus];
    callback(@[[NSNull null], status]);
  }
}

- (NSDictionary *)constantsToExport
{
  UIDevice *device = [UIDevice currentDevice];
  BOOL supported = device.passcodeStatusSupported;
  NSMutableDictionary* constants = [[NSMutableDictionary alloc] initWithDictionary:@{
    @"supported": @(supported)
  }];

  if (supported) {
    NSString* status = [RNPasscodeStatus getPasscodeStatusString:device.passcodeStatus];
    [constants setObject:status forKey:@"status"];
  }

  return [NSDictionary dictionaryWithDictionary:constants];
}

+ (NSString *) getPasscodeStatusString:(LNPasscodeStatus) status
{
  switch (status) {
    case LNPasscodeStatusDisabled:
      return @"disabled";
    case LNPasscodeStatusEnabled:
      return @"enabled";
    case LNPasscodeStatusUnknown:
      return @"unknown";
    default:
      return nil;
  }
}

@end
