//
//  ZRArenaView.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/14.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRArenaView.h"

@implementation ZRArenaView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
  UIImage *image = [UIImage imageNamed:@"NLArenaBackground"];
  [image drawInRect:rect];
}

@end
