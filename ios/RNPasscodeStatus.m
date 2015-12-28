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

//RCT_EXPORT_METHOD(passcodeStatus:(RCTResponseSenderBlock)callback)
//{
//  UIDevice *device = [UIDevice currentDevice];
//  if (!device.passcodeStatusSupported) {
//    NSError *error = [NSError errorWithDomain:NSOSStatusErrorDomain code:errSecUnimplemented userInfo:@{ @"description": @"passcode status not supported" }];
//    NSDictionary* errDict = RCTMakeAndLogError([error description], nil, [error dictionaryWithValuesForKeys:@[@"domain", @"code"]]);
//    callback(@[errDict]);
//  } else {
//    callback(@[[NSNull null], device.passcodeStatus]);
//  }
//}

- (NSDictionary *)constantsToExport
{
  UIDevice *device = [UIDevice currentDevice];
  BOOL supported = device.passcodeStatusSupported;
  NSString* status = nil;
  if (supported) {
    switch (device.passcodeStatus) {
      case LNPasscodeStatusDisabled:
        status = @"disabled";
        break;
      case LNPasscodeStatusEnabled:
        status = @"enabled";
        break;
      case LNPasscodeStatusUnknown:
        status = @"unknown";
        break;
    }
  }
  
  return @{
           @"supported": @(supported),
           @"status": status
           };
}

@end
