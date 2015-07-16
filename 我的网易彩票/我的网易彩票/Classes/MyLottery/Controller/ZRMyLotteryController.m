//
//  ZRMyLotteryController.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/17.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRMyLotteryController.h"
#import "ZRKeFuController.h"
#import "ZRSettingController.h"

@interface ZRMyLotteryController ()
@property(weak, nonatomic) IBOutlet UIButton *loginButton;
@property(weak, nonatomic) IBOutlet UIBarButtonItem *lotteryConfigButton;
@property(weak, nonatomic) IBOutlet UIButton *kefuButton;

@end

@implementation ZRMyLotteryController

- (void)viewDidLoad {
  [super viewDidLoad];
   
  
}

- (void)awakeFromNib {
  //登录背景图片设置。
  UIImage *backLoginImg = [UIImage imageNamed:@"RedButtonPressed"];

  backLoginImg =
      [backLoginImg stretchableImageWithLeftCapWidth:30 topCapHeight:15];

  [self.loginButton setBackgroundImage:backLoginImg
                              forState:UIControlStateHighlighted];

  //设置按钮图片设置
  UIImage *configBtnImg = [UIImage imageNamed:@"Mylottery_config"];
  configBtnImg =
      [configBtnImg imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

  [self.lotteryConfigButton setImage:configBtnImg];

    
    //设置客服button
    
    UIBarButtonItem *kefuBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"客服" style:UIBarButtonItemStylePlain target:self action:@selector(kefuButtonClicked)];
    
    self.navigationItem.leftBarButtonItem = kefuBtnItem;
  
}

- (void)kefuButtonClicked {
  ZRKeFuController *kefuController = [[ZRKeFuController alloc] init];
  kefuController.view.backgroundColor = [UIColor whiteColor];
  kefuController.title = @"客服";
  [self.navigationController pushViewController:kefuController animated:YES];
}
- (IBAction)loginBtnClicked:(UIButton *)sender {
    
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor whiteColor];
    vc.title = @"登录！！";
    
    UIBarButtonItem *backBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"取消！" style:UIBarButtonItemStylePlain target:self action:@selector(backBtnItemClicked)];
    
    
    vc.navigationItem.leftBarButtonItem = backBtnItem;
    
    
    
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:vc];
    
    [self presentViewController:navController animated:YES completion:^{
        
    }];
    
    
    
    
}
- (IBAction)settingBtnClicked:(id)sender {
    ZRSettingController *settingController = [[ZRSettingController alloc] init];
    settingController.title = @"设置";
    
    
    UIBarButtonItem *questions = [[UIBarButtonItem alloc] initWithTitle:@"常见问题" style:UIBarButtonItemStylePlain target:self action:@selector(questionBtnClicked)];
    
    settingController.navigationItem.rightBarButtonItem = questions;
    
    [self.navigationController pushViewController:settingController animated:YES];
    
}

-(void)questionBtnClicked{
    

}

-(void)backBtnItemClicked{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];

}

@end
