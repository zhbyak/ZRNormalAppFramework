//
//  ZRTabBarController.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/14.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRTabBarController.h"
#import "ZRTabBar.h"

@interface ZRTabBarController () <ZRTabBarDelegate>

@end

@implementation ZRTabBarController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.

  ZRTabBar *zrTabBar = [[ZRTabBar alloc] init];
  [self.view addSubview:zrTabBar];

  zrTabBar.delegate = self;

  zrTabBar.frame = self.tabBar.bounds;

  [self zrTabBarController:zrTabBar];
    
  //这句话非常的有智慧，添加在它上面就行了，可以实现自定义的功能
  [self.tabBar addSubview:zrTabBar];
    


  
}

/**
 *  给自己的控制器添加控件
 */
- (void)zrTabBarController:(ZRTabBar *)zrTabBar {

  NSArray *sbNames =
      @[ @"LotteryHall", @"Arena", @"Discovery", @"History", @"MyLottery" ];

  NSMutableArray *arrayM = [NSMutableArray array];

  for (NSString *sbName in sbNames) {

    UIStoryboard *sb = [UIStoryboard storyboardWithName:sbName bundle:nil];

    UINavigationController *navController =
        [sb instantiateInitialViewController];

    [zrTabBar addTabBarItem:sbName];

    [arrayM addObject:navController];
  }

  self.viewControllers = arrayM.copy;
}

/**
 *  自定义的tabBar的代理方法
 */
- (void)zrTabBar:(ZRTabBar *)zrTabBar withTag:(NSInteger)tag {

  self.selectedIndex = tag;
}
@end
