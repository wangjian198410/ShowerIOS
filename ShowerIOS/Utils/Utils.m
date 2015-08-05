//
//  Utils.m
//  iosapp
//
//  Created by chenhaoxiang on 14-10-16.
//  Copyright (c) 2014年 oschina. All rights reserved.
//

#import "Utils.h"

@implementation Utils



+(BOOL) isFirstLauncher{
    NSString* returanValue = [self readFromNSUserDefaults:KFirstLauncher];
    if (returanValue==nil||[returanValue  isEqual:@"false"]) {
        return NO;
    }else{
        return YES;
    }
    
}
+ (void)configFirstLauncher:(BOOL)firstLauncher{
    if (firstLauncher) {
        [self settingNSUserDefaults:KFirstLauncher value:@"true"];
    }else{
        [self settingNSUserDefaults:KFirstLauncher value:@"false"];
    }
}






+(NSString*)readFromNSUserDefaults:(NSString*)keyName{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    return [ud objectForKey:keyName];
}

+ (void)settingNSUserDefaults:(NSString*)keyParam value:(NSString*)valueParam{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:valueParam forKey:valueParam];
}




@end
