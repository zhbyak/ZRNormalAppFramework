//
//  ZRItemLabel.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/18.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRItemLabel.h"

@implementation ZRItemLabel
+(instancetype)itemWithTitle:(NSString *)title time:(NSString *)time{
    ZRItemLabel *item = [self itemWithTitle:title];
    item.time = time;
    
    return item;
}
@end
