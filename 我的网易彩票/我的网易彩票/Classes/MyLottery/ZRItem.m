//
//  ZRItem.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/17.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRItem.h"

@implementation ZRItem

+ (instancetype)itemWithTitle:(NSString *)title icon:(NSString *)icon {
    ZRItem *item = [self itemWithTitle:title];
  item.icon = icon;

  return item;
}

+(instancetype)itemWithTitle:(NSString *)title{
    ZRItem *item = [[self alloc] init];
    item.title = title;
    
    
    return item;

}

@end
