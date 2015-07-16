//
//  ZRMorePush3Controller.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/18.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRMorePush3Controller.h"

@interface ZRMorePush3Controller ()

@end

@implementation ZRMorePush3Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)setData{
    ZRItem *item11 = [ZRItemSwitch itemWithTitle:@"中奖动画" icon:nil];
    
    ZRGroup *group1 = [ZRGroup groupWithItems:@[item11] footer:@"开启后，当有新中奖订单，打开应用时会显示动画提醒我。为避免显示过于频繁，高频彩不会提醒"];

    self.groups = @[group1];
}

@end
