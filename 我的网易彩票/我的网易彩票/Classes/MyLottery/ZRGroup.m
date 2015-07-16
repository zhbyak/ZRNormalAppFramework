//
//  ZRGroup.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/17.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRGroup.h"

@implementation ZRGroup

+ (instancetype)groupWithItems:(NSArray *)items {
  ZRGroup *group = [[ZRGroup alloc] init];
  group.items = items;
  return group;
}

+ (instancetype)groupWithItems:(NSArray *)items header:(NSString *)header {
    ZRGroup *group = [ZRGroup groupWithItems:items];
    group.header = header;
    return group;
}

+ (instancetype)groupWithItems:(NSArray *)items footer:(NSString *)footer {
    ZRGroup *group = [ZRGroup groupWithItems:items];
    group.footer = footer;
    return group;
}

+(instancetype)groupWithItems:(NSArray *)items header:(NSString *)header footer:(NSString *)footer{
    ZRGroup *group = [ZRGroup groupWithItems:items header:header];
    group.footer = footer;
    return group;
}

@end
