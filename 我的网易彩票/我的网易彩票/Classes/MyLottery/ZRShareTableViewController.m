//
//  ZRShareTableViewController.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/18.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRShareTableViewController.h"
#import "ZRItemLabel.h"

@interface ZRShareTableViewController ()



@end

@implementation ZRShareTableViewController

- (NSArray *)groups {
    if (_groups == nil) {
        [self setData];
    }
    return _groups;
}

- (void)setData {
    //儿子们 重写去吧！
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.tableHeaderView =
    [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 15)];
    
    self.tableView.sectionHeaderHeight = 0;
    //    self.tableView.sectionFooterHeight = 0;
    self.tableView.backgroundView =
    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg"]];
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    
    return [[self.groups[section] items] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZRItemCell *cell = [ZRItemCell cellWithTableView:tableView];
    
    ZRGroup *group = self.groups[indexPath.section];
    ZRItem *item = group.items[indexPath.row];
    
    cell.item = item;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //不让这个row被选中(底色变灰色)
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    ZRGroup *group = self.groups[indexPath.section];
    ZRItem *item = group.items[indexPath.row];
    
    if (item.desController) {
        UIViewController *vc = [[item.desController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
        vc.title = item.title;
    } else if (item.option) {
        item.option();
    }
}

- (instancetype)init {
    if (self = [super init]) {
        self = [self initWithStyle:UITableViewStyleGrouped];
    }
    return self;
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    ZRGroup *group = self.groups[section];
    return group.footer;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    ZRGroup *group = self.groups[section];
    return group.header;
}

@end
