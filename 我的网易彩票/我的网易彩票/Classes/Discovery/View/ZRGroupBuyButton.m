//
//  ZRGroupBuyButton.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/15.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRGroupBuyButton.h"
#import "UIView+EasyFrame.h"

@implementation ZRGroupBuyButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)init{
    if (self = [super init]) {
        UIImage *selBackImg = [UIImage imageNamed:@"navTitleSel"];
        
        [self setTitle:@"全部彩种" forState:UIControlStateNormal];
        [self setImage:[UIImage imageNamed:@"YellowDownArrow"] forState:UIControlStateNormal];
        [self setBackgroundImage:selBackImg forState:UIControlStateSelected];
        self.width = selBackImg.size.width;
        self.height = selBackImg.size.height;
        
    }
    return self;

}
-(void)layoutSubviews{
    
    [super layoutSubviews];
    self.titleLabel.x = self.imageView.x;
    self.imageView.x = CGRectGetMaxX(self.titleLabel.frame) + 5;
    
    
}



@end
