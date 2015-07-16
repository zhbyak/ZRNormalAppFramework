//
//  ZRGroupBuyTableViewController.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/15.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRGroupBuyTableViewController.h"
#import "ZRGroupBuyButton.h"
#import "UIView+EasyFrame.h"

@interface ZRGroupBuyTableViewController ()
@property(nonatomic, weak) UIView *coverView;

@end

@implementation ZRGroupBuyTableViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  /**
   *  开始中间按钮
   */
  ZRGroupBuyButton *groupBuyBtn = [[ZRGroupBuyButton alloc] init];
  self.navigationItem.titleView = groupBuyBtn;
  [groupBuyBtn addTarget:self
                  action:@selector(groupBuyBtnClicked:)
        forControlEvents:UIControlEventTouchUpInside];

  /**
   *  开始右边按钮
   */
  //创建显示按钮
  UIView *rightView = [[UIView alloc] init];

  UIButton *btn1 = [[UIButton alloc] init];
  [rightView addSubview:btn1];
  [btn1 setTitle:@"发合买" forState:UIControlStateNormal];
  [btn1 sizeToFit];

  UIButton *btn2 = [[UIButton alloc] init];
  [rightView addSubview:btn2];
  [btn2 setImage:[UIImage imageNamed:@"NavInfoFlat"]
        forState:UIControlStateNormal];
  [btn2 sizeToFit];
  NSLog(@"%@", @(btn2.y));

  rightView.width = btn1.width + btn2.width + 5;
  rightView.height = 44;

  btn1.y = (rightView.height - btn1.height) * 0.5;

  btn2.x = CGRectGetMaxX(btn1.frame) + 5;
  btn2.y = (rightView.height - btn2.height) * 0.5;

  UIBarButtonItem *rightItem =
      [[UIBarButtonItem alloc] initWithCustomView:rightView];

  //创建调节位置按钮
  UIBarButtonItem *fixedSpaceItem = [[UIBarButtonItem alloc]
      initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                           target:nil
                           action:nil];
  fixedSpaceItem.width = -10;

  self.navigationItem.rightBarButtonItems = @[
   fixedSpaceItem, rightItem
  ];
}

/**
 *  团购按钮点击事件
 */
- (void)groupBuyBtnClicked:(ZRGroupBuyButton *)sender {
  sender.selected = !sender.selected;
  [UIView animateWithDuration:0.5
                   animations:^{
                     sender.imageView.transform = CGAffineTransformRotate(
                         sender.imageView.transform, M_PI);
                   }];

  if (sender.selected) {
    UIView *coverView = [[UIView alloc] init];
    [self.view addSubview:coverView];
    self.coverView = coverView;

    coverView.frame = self.view.frame;
    coverView.height = self.view.height * 0.5;

    coverView.backgroundColor = [UIColor blackColor];
    coverView.alpha = 0.5;

  } else {
    [self.coverView removeFromSuperview];
  }
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

  // Return the number of sections.
  return 0;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {

  // Return the number of rows in the section.
  return 0;
}

@end
