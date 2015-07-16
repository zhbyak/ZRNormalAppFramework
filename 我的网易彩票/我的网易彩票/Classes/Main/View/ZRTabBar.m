//
//  ZRTabBar.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/14.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRTabBar.h"
#import "UIView+EasyFrame.h"
#import "ZRTabBarButton.h"

@interface ZRTabBar ()

@property (nonatomic,weak) UIButton *preButton;


@end


@implementation ZRTabBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void) addTabBarItem:(NSString *)sbName{
    
    NSString *picName = [NSString stringWithFormat:@"TabBar_%@_new", sbName];
    
    NSString *selName =
    [NSString stringWithFormat:@"TabBar_%@_selected_new", sbName];
    
    ZRTabBarButton *button = [ZRTabBarButton buttonWithType:UIButtonTypeCustom];
    
    button.tag = self.subviews.count;
    
    [button setImage:[UIImage imageNamed:picName] forState:UIControlStateNormal];
    
    [button setImage:[UIImage imageNamed:selName] forState:UIControlStateSelected];
    
    [button sizeToFit];

    [self addSubview:button];
    
    
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchDown];//改成down，按下就执行
    
    if (self.subviews.count == 1) {
        [self buttonClicked:button];
    }

}

-(void)buttonClicked:(UIButton *)sender{
    
    self.preButton.selected = NO;
    
    sender.selected = YES;
    
    self.preButton = sender;
    
    if ([self.delegate respondsToSelector:@selector(zrTabBar:withTag:)]) {
        
        [self.delegate zrTabBar:self withTag:sender.tag];
    
    }
    
}


-(void)layoutSubviews{
    [super layoutSubviews];
    
    for (int  i = 0; i <self.subviews.count; i ++) {
        UIButton *btn = self.subviews[i];
        btn.x = i * btn.width;
    }

}


@end
