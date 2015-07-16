//
//  ZRWheelController.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/16.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRWheelController.h"
#import "ZRWheelView.h"
#import "UIView+EasyFrame.h"

@interface ZRWheelController ()

@end

@implementation ZRWheelController

- (void)viewDidLoad {
  [super viewDidLoad];
    ZRWheelView *wheelView = [ZRWheelView wheelView];
    [self.view addSubview:wheelView];
    wheelView.center = self.view.center;
    wheelView.y += 50;
}
- (IBAction)closeButtonClicked {
  [self dismissViewControllerAnimated:YES completion:^{
     
  }];
}

@end
