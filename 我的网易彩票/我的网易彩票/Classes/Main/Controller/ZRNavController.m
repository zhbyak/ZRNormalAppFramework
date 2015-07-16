//
//  ZRNavController.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/16.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRNavController.h"

@interface ZRNavController ()

@end

@implementation ZRNavController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController
                  animated:(BOOL)animated {
  /**
   左边后退按钮设置
   */
  UIBarButtonItem *backBarItem = [[UIBarButtonItem alloc]
      initWithImage:
          [[UIImage imageNamed:@"NavBack"]
              imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
              style:UIBarButtonItemStylePlain
             target:self
             action:@selector(backBtnClicked:)];

  UIBarButtonItem *fixedItem = [[UIBarButtonItem alloc]
      initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                           target:nil
                           action:nil];
  fixedItem.width = -10;

  viewController.navigationItem.leftBarButtonItems =
      @[ fixedItem, backBarItem ];

  self.interactivePopGestureRecognizer.delegate = nil;

  viewController.hidesBottomBarWhenPushed = YES;

  [super pushViewController:viewController animated:YES];
}



    /**
    *  返回按钮点击事件
    */
    -
    (void)backBtnClicked:(UIBarButtonItem *)sender {

  [self popViewControllerAnimated:YES];
}

+ (void)initialize {
    //获取所有UINavigationBar的样式
  UINavigationBar *navBar = [UINavigationBar appearance];
  [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"]
               forBarMetrics:UIBarMetricsDefault];
  [navBar setTitleTextAttributes:@{
    NSForegroundColorAttributeName : [UIColor whiteColor]
  }];
    
    
    //获取所有的UIBarButtonItem 设置样式
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateNormal];
}

@end
