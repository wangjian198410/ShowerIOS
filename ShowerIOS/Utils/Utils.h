//
//  Utils.h
//  iosapp
//
//  Created by chenhaoxiang on 14-10-16.
//  Copyright (c) 2014年 oschina. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AFHTTPRequestOperationManager+Util.h"
#import "ProjectConfig.h"


@interface Utils : NSObject

+(BOOL) isFirstLauncher;
+ (void)configFirstLauncher:(BOOL)firstLauncher;



@end
