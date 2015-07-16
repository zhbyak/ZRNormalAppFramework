//
//  ZRLuckyController.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/16.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRLuckyController.h"

@interface ZRLuckyController ()

@property (weak, nonatomic) IBOutlet UIImageView *lightsView;
@end

@implementation ZRLuckyController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lightsView.animationImages = @[[UIImage imageNamed:@"lucky_entry_light0"],[UIImage imageNamed:@"lucky_entry_light1"]];
    self.lightsView.animationDuration = 0.5;
    self.lightsView.animationRepeatCount = MAXFLOAT;
    [self.lightsView startAnimating];
}
- (IBAction)luckyButton {
    
    [self performSegueWithIdentifier:@"testSegue" sender:nil];
    
    
    
}


@end
