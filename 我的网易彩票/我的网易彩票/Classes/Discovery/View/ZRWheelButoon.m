//
//  ZRWheelButoon.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/16.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRWheelButoon.h"
#import "UIView+EasyFrame.h"

@interface ZRWheelButoon ()
@property (nonatomic,assign) CGFloat imgW;

@property (nonatomic,assign) CGFloat imgH;

@end

@implementation ZRWheelButoon

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (instancetype)buttonWithPicW:(CGFloat)width andPicH:(CGFloat)height{
    ZRWheelButoon *btn = [[ZRWheelButoon alloc] init];
    
    btn.imgW = width ;
    btn.imgH = height;
    
    return btn;
}


- (void)setHighlighted:(BOOL)highlighted{

}



//-(void)layoutSubviews{
//    [super layoutSubviews];
//    NSLog(@"self.width = %@",@(self.width));
//    NSLog(@"self = %@",self);
//    
//    self.imageView.x = (self.width - self.imgW) * 0.5;
//    self.imageView.y = 20 ;
//    self.imageView.width = self.imgW;
//    self.imageView.height = self.imgH;
//
//}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    
    
    
    CGFloat x = (contentRect.size.width - self.imgW ) * 0.5;
    CGFloat y = 20;
    CGFloat width = self.imgW;
    CGFloat height = self.imgH;
    
    return CGRectMake(x, y, width, height);

}
@end
