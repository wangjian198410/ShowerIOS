//
//  AFHTTPRequestOperationManager+Util.m
//  iosapp
//
//  Created by AeternChan on 6/18/15.
//  Copyright (c) 2015 oschina. All rights reserved.
//

#import "AFHTTPRequestOperationManager+Util.h"

@implementation AFHTTPRequestOperationManager (Util)

+ (instancetype)ClientManager
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
   
    return manager;
}

@end
