//
//  ZRItemSwitch.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/17.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRItemSwitch.h"

@implementation ZRItemSwitch

+(instancetype)itemWithTitle:(NSString *)title subTitle:(NSString *)subTitle{
    ZRItemSwitch *item = [[self alloc] init];
    item.title = title;
    item.subTitle = subTitle;
    
    return item;
}
@end
