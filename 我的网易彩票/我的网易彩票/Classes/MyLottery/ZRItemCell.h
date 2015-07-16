//
//  ZRItemCell.h
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/18.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZRItem.h"
@interface ZRItemCell : UITableViewCell
//这个属性就是为了给cell的各个参数赋值用的
@property (strong,nonatomic) ZRItem *item;


+(instancetype)cellWithTableView:(UITableView *)tableView;
+(instancetype)cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style;
@end
