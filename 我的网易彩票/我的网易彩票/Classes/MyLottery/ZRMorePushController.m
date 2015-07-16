//
//  ZRMorePushController.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/18.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRMorePushController.h"
#import "ZRMorePush1Controller.h"
#import "ZRMorePush3Controller.h"
#import "ZRMorePush4Controller.h"
#import "ZRMorePush2Controller.h"


@interface ZRMorePushController ()

@end

@implementation ZRMorePushController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)setData{
    //第一组
    ZRItem  *item11 = [ZRItemArrow itemWithTitle:@"开奖推送" destController:[ZRMorePush1Controller class]];
    
    ZRItem *item12 = [ZRItemArrow itemWithTitle:@"比分直播推送" destController:[ZRMorePush2Controller class]];
    ZRItem *item13 = [ZRItemArrow itemWithTitle:@"中奖动画" destController:[ZRMorePush3Controller class]];
    ZRItem *item14 = [ZRItemArrow itemWithTitle:@"购彩提醒" destController:[ZRMorePush4Controller class]];
    
    ZRItem *item15 = [ZRItemArrow itemWithTitle:@"圈子推送" destController:nil];
    ZRGroup *group1 = [ZRGroup groupWithItems:@[item11,item12,item13,item14,item15]];
    
    self.groups = @[group1];



}
@end
