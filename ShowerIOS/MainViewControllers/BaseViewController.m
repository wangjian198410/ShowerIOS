//
//  BaseViewController.m
//  ShowerIOS
//
//  Created by wangjian on 15/8/2.
//  Copyright (c) 2015年 wj. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController()

@property (nonatomic, strong) AFHTTPRequestOperationManager *manager;

@end

@implementation BaseViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    _manager = [AFHTTPRequestOperationManager ClientManager];
}





-(void)fetchObjectByGet{
    [_manager GET:[self generateURL]
       parameters:nil
          success:^(AFHTTPRequestOperation *operation, id responseObject) {
              [self processSuccessNet:operation error:responseObject];
            }
          failure:^(AFHTTPRequestOperation *operation, NSError *error) {
              //展示网络错误信息
              if (self.showError) {
                  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Really reset?" message:@"Do you really want to reset this game?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
                  // optional - add more buttons:
                  [alert addButtonWithTitle:@"Yes"];
                  [alert show];
              }
              [self processErrorNet:operation error:error];
          }
     ];
}


- (NSString*) generateURL{
    NSAssert(false, @"Over ride in subclasses");
    return nil;
}


-(void) processSuccessNet:(AFHTTPRequestOperation*)operation error:(id)responseObject{
    NSAssert(false, @"Over ride in subclasses");
}

-(void) processErrorNet:(AFHTTPRequestOperation*)operation error:(NSError*)error{
    NSAssert(false, @"Over ride in subclasses");
}


@end