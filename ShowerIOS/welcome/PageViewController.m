//
//  PageViewController.m
//  UIPageControlTest
//
//  Created by yeeku on 14/12/11.
//  Copyright (c) 2014年 crazyit.org. All rights reserved.
//

#import "PageViewController.h"

@implementation PageController
- (id)initWithPageNumber:(NSInteger)pageNumber
{
	self = [super initWithNibName:nil bundle:nil];
	if (self)
	{
		self.bookImage = [[UIImageView alloc] initWithFrame:
			CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
		self.bookImage.contentMode = UIViewContentModeScaleAspectFit;
		[self.view addSubview:self.bookImage];
	}
	return self;
}
@end
