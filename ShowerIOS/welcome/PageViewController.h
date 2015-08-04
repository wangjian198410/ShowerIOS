//
//  PageViewController.h
//  UIPageControlTest
//
//  Created by yeeku on 14/12/11.
//  Copyright (c) 2014年 crazyit.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageController : UIViewController
// 代表界面上两个UILabel和一个UIImageView
@property (strong, nonatomic) UIImageView* bookImage;
- (id)initWithPageNumber:(NSInteger)pageNumber;
@end
