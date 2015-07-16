//
//  ZRLoterryHallTableViewController.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/14.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRLoterryHallTableViewController.h"
#import "UIView+EasyFrame.h"

@interface ZRLoterryHallTableViewController ()

@property(nonatomic, weak) UIView *coverView;

@property(nonatomic, weak) UIImageView *activityView;

@end

@implementation ZRLoterryHallTableViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  UIBarButtonItem *item = [[UIBarButtonItem alloc]
      initWithImage:
          [[UIImage imageNamed:@"CS50_activity_image"]
              imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
              style:UIBarButtonItemStylePlain
             target:self
             action:@selector(buttonClicked)];
  self.navigationItem.leftBarButtonItem = item;
}

- (void)buttonClicked {
  UIWindow *window = [UIApplication sharedApplication].keyWindow;

  UIView *coverView =
      [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
  [window addSubview:coverView];

  coverView.backgroundColor = [UIColor blackColor];
  coverView.alpha = 0.6;

  self.coverView = coverView;

  UIImageView *activityView =
      [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"aa"]];
  [window addSubview:activityView];
  activityView.center = coverView.center;
  activityView.userInteractionEnabled = YES;

  self.activityView = activityView;

  UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
  [activityView addSubview:closeBtn];
  [closeBtn setImage:[UIImage imageNamed:@"alphaClose"]
            forState:UIControlStateNormal];
  [closeBtn sizeToFit];
  closeBtn.x = activityView.width - closeBtn.width;

  [closeBtn addTarget:self
                action:@selector(closeBtnClicked:)
      forControlEvents:UIControlEventTouchUpInside];
}

/**
 *
 *苍老师X按钮监听方法
 */
- (void)closeBtnClicked:(UIButton *)sender {
  [UIView animateWithDuration:0.5
      animations:^{
        self.coverView.alpha = 0;
        self.activityView.frame = CGRectMake(40, 45, 0, 0);
        [[self.activityView.subviews lastObject] removeFromSuperview];
      }
      completion:^(BOOL finished) {
        [self.coverView removeFromSuperview];
        [self.activityView removeFromSuperview];
      }];
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  // Return the number of sections.
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {

  // Return the number of rows in the section.
  return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  NSString *reuseID = @"id";

  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];

  if (cell == nil) {

    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1
                                  reuseIdentifier:reuseID];

    cell.textLabel.text = @"我是一条围观的数据";
  }

  return cell;
}

@end
