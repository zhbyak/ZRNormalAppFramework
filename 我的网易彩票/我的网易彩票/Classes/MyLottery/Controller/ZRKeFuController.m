//
//  ZRKeFuController.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/17.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRKeFuController.h"

@interface ZRKeFuController ()

@end

@implementation ZRKeFuController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置右边的电话button
    UIBarButtonItem *callButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"电话" style:UIBarButtonItemStylePlain target:self action:nil];
    
    
    
    self.navigationItem.rightBarButtonItem = callButtonItem;

    
}



@end
