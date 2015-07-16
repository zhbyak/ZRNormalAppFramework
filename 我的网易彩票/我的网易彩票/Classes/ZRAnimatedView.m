//
//  ZRAnimatedView.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/24.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRAnimatedView.h"
#import "UIView+EasyFrame.h"
#import "ZRTabBarController.h"

@interface ZRAnimatedView ()

@property (weak, nonatomic) IBOutlet UIImageView *guideView;

@property (weak, nonatomic) IBOutlet UIImageView *guideLargeText;
@property (weak, nonatomic) IBOutlet UIImageView *guideSmallText;

@property (weak, nonatomic) IBOutlet UIButton *tryButton;

@end

@implementation ZRAnimatedView

+(instancetype)animatedView{
    
//通过需要设置图片.
    ZRAnimatedView *animatedView = [[[NSBundle mainBundle] loadNibNamed:@"ZRAnimatedView" owner:nil options:nil] lastObject];
        
    
    
    return animatedView;
    
}

-(instancetype) setImagesWithIndex:(NSInteger)index{
    
    NSString *guideViewName = [NSString stringWithFormat:@"guide%zd",index + 1];
    NSString *guideLargeTextName = [NSString stringWithFormat:@"guideLargeText%zd",index + 1];
    NSString *guideSmallTextName = [NSString stringWithFormat:@"guideSmallText%zd",index + 1];
    
    self.guideView.image = [UIImage imageNamed:guideViewName];
    self.guideLargeText.image = [UIImage imageNamed:guideLargeTextName];
    self.guideSmallText.image = [UIImage imageNamed:guideSmallTextName];
    
    if (index == 3) {
        self.tryButton.hidden = NO;
    }else{
        self.tryButton.hidden = YES;
    }
    
//    [self setNeedsDisplay];
    
    return self;
}

- (IBAction)tryButtonClicked {
    ZRTabBarController *vc = [[ZRTabBarController alloc]init];
    [UIView animateWithDuration:0.5 animations:^{
        [UIApplication sharedApplication].keyWindow.rootViewController = vc;
    }];
    
}


@end
