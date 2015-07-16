//
//  ZRArenaViewController.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/14.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//
#define kCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#import "ZRArenaViewController.h"
#import "UIView+EasyFrame.h"

@interface ZRArenaViewController ()

@end

@implementation ZRArenaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationBar *navBar = self.navigationController.navigationBar;
    
    [navBar setBackgroundImage:[UIImage imageNamed:@"NLArenaNavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    
    UISegmentedControl *seg = [[UISegmentedControl alloc] initWithItems:@[@"足球",@"篮球"]];
    
    self.navigationItem.titleView = seg;
    seg.selectedSegmentIndex = 0;
    [seg setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [seg setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    seg.width = 150;
    
    [seg setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateSelected];
    
    [seg setTitleTextAttributes:@{NSForegroundColorAttributeName:kCOLOR(34, 140, 120)} forState:UIControlStateNormal];
    
    [seg addTarget:self action:@selector(segChanged:) forControlEvents:UIControlEventValueChanged];
    
    
}

-(void)segChanged:(UISegmentedControl *)sender{
    // the UIControlEventValueChanged action is invoked when the segment changes via a user event. set to UISegmentedControlNoSegment to turn off selection
//    @property(nonatomic) NSInteger selectedSegmentIndex;
    NSLog(@"%@",@(sender.selectedSegmentIndex));

}


@end
