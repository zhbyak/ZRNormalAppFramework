//
//  ZRSettingController.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/18.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRSettingController.h"
#import "ZRItemCell.h"
#import "ZRGroup.h"
#import "ZRItem.h"
#import "ZRItemArrow.h"
#import "ZRItemSwitch.h"
#import "ZRMorePushController.h"
#import "ZRRedeemCodeController.h"
#import "ZRMoreNeteaseController.h"

@interface ZRSettingController ()


@end

@implementation ZRSettingController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)setData {
    //第一组
    ZRItem *item11 = [ZRItemArrow itemWithTitle:@"使用兑换码"
                                           icon:@"RedeemCode"
                                  desController:[ZRRedeemCodeController class]];
    ZRGroup *group1 = [ZRGroup groupWithItems:@[ item11 ]];
    
    //第二组
    ZRItem *item21 = [ZRItemArrow itemWithTitle:@"推送和提醒"
                                           icon:@"MorePush"
                                  desController:[ZRMorePushController class]];
    ZRItem *item22 = [ZRItemSwitch itemWithTitle:@"摇一摇机选" icon:@"handSh"
                      @"ake"];
    ZRItem *item23 =
    [ZRItemSwitch itemWithTitle:@"声音效果" icon:@"sound_Effect"];
    ZRItem *item24 = [ZRItemSwitch itemWithTitle:@"购彩小助手"
                                            icon:@"More_LotteryRecommend"];
    ZRItem *item25 =
    [ZRItemSwitch itemWithTitle:@"圈子仅Wifi加载图片"
                           icon:@"More_QuanZi_NetFlowSwitchImage"];
    ZRGroup *group2 =
    [ZRGroup groupWithItems:@[ item21, item22, item23, item24, item25 ]];
    
    //第三组
    ZRItem *item31 = [ZRItemArrow itemWithTitle:@"检查新版本"
                                           icon:@"MoreUpdate"
                                     itemOption:^{
                                         NSLog(@"已经是最新版本");
                                     }];
    ZRItem *item32 = [ZRItem itemWithTitle:@"推荐给朋友" icon:@"MoreShare"];
    ZRItem *item33 = [ZRItemArrow itemWithTitle:@"产品推荐" icon:@"MoreNetease" desController:[ZRMoreNeteaseController class]];
    ZRItem *item34 = [ZRItem itemWithTitle:@"关于" icon:@"MoreAbout"];
    ZRGroup *group3 =
    [ZRGroup groupWithItems:@[ item31, item32, item33, item34 ]];
    self.groups = @[ group1, group2, group3 ];
}







@end
