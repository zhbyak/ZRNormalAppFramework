//
//  ZRShareTableViewController.h
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/18.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ZRItemCell.h"
#import "ZRGroup.h"
#import "ZRItem.h"
#import "ZRItemArrow.h"
#import "ZRItemSwitch.h"
#import "ZRItemLabel.h"


@interface ZRShareTableViewController : UITableViewController
@property(strong, nonatomic) NSArray *groups;
- (void)setData;
@end
