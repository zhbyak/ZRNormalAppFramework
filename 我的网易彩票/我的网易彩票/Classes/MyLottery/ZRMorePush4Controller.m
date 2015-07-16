//
//  ZRMorePush4Controller.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/18.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRMorePush4Controller.h"

@interface ZRMorePush4Controller ()

@end

@implementation ZRMorePush4Controller

-(void)setData{

    ZRItem *item11 = [ZRItemSwitch itemWithTitle:@"中奖动画" icon:nil];
    
    ZRGroup *group1 = [ZRGroup groupWithItems:@[item11] footer:@"开启后，可设定时间提醒自己在开奖日不要忘了购彩"];
    
    self.groups = @[group1];
}

@end
