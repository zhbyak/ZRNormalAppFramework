//
//  ZRMorePush1Controller.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/18.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRMorePush1Controller.h"
#import "ZRItemSwitch.h"

@interface ZRMorePush1Controller ()

@end

@implementation ZRMorePush1Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
}

//-(instancetype)init{
//    return  self initWithStyle:<#(UITableViewStyle)#>
//}

-(void)setData{
    //一组
    ZRItem *item11 = [ZRItemSwitch itemWithTitle:@"开奖推送" subTitle:@"每周二、四、日开奖"];
    ZRItem *item12 = [ZRItemSwitch itemWithTitle:@"比分直播推送"  subTitle:@"每周一、三、六开奖"];
    ZRItem *item13 = [ZRItemSwitch itemWithTitle:@"中奖动画"  subTitle:@"每周开奖 包括试机号提醒"];
    ZRItem *item14 = [ZRItemSwitch itemWithTitle:@"购彩提醒"  subTitle:@"每周一、三、五开奖"];
    ZRItem *item15 = [ZRItemSwitch itemWithTitle:@"圈子推送"  subTitle:@"每周二、五、日开奖"];
    ZRItem *item16 = [ZRItemSwitch itemWithTitle:@"排列三"  subTitle:@"每天开奖"];
    ZRItem *item17 = [ZRItemSwitch itemWithTitle:@"排列五"  subTitle:@"每天开奖"];
    
    
    ZRGroup *group1 = [ZRGroup groupWithItems:@[item11,item12,item13,item14,item15,item16,item17]];
    self.groups = @[group1];

}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZRItemCell *cell = [ZRItemCell cellWithTableView:tableView style:UITableViewCellStyleSubtitle];
    
    ZRGroup *group = self.groups[indexPath.section];
    ZRItem *item = group.items[indexPath.row];
    
    cell.item = item;
    
    return cell;
}


@end
