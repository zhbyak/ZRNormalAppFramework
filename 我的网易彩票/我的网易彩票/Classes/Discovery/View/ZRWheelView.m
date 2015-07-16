//
//  ZRWheelView.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/16.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRWheelView.h"
#import "ZRWheelButoon.h"
#import "UIView+EasyFrame.h"


@interface ZRWheelView ()

@property (weak, nonatomic) IBOutlet UIImageView *rotateView;

@property (nonatomic,weak) ZRWheelButoon *preButton;

@property (weak, nonatomic) IBOutlet UIButton *startPickBtn;

@property (strong,nonatomic) CADisplayLink *disPlayLink;

@end

@implementation ZRWheelView

+ (instancetype)wheelView {

  ZRWheelView *wheelView =
      [[[NSBundle mainBundle] loadNibNamed:@"Wheel"
                                     owner:nil
                                   options:nil] lastObject];

  
  return wheelView;
}

- (void)wheelBtnClicked:(ZRWheelButoon *)sender {
    NSLog(@"%@=",NSStringFromCGRect(sender.superview.frame));
    self.preButton.selected = NO;
  sender.selected = !sender.selected;
    self.preButton = sender;
}
- (IBAction)startPickClicked:(UIButton *)sender {
    CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    anim.toValue = @(M_PI * 2 * 5 );
    
    anim.duration = 2;
    
    anim.repeatCount = 1;//最大用MAXFLOAT
    
    anim.delegate = self;
    
    [self.rotateView.layer addAnimation:anim forKey:nil];
    
    
}

-(void)rotate{
    CADisplayLink *disPlayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(disPlayRotate)];
    
    self.disPlayLink = disPlayLink;
    
    [disPlayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];

}

-(void)disPlayRotate{
    self.rotateView.transform = CGAffineTransformRotate(self.rotateView.transform,0.1 * M_PI * 2 / 60 );

}

/**
 *  animation的代理（核心动画的代理）
 */
-(void)animationDidStart:(CAAnimation *)anim{
    self.rotateView.userInteractionEnabled = NO;
    self.disPlayLink.paused = YES;
}

-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    //注意！！！！
    //这里的MakeRotation就是强行吧trasnform.rotation的值变成多少，所以就是定位，把选中的按钮定位到原点。
    self.rotateView.transform = CGAffineTransformMakeRotation(- self.preButton.tag * 2 *M_PI / 12);
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.disPlayLink.paused = NO;
        
    });
    self.rotateView.userInteractionEnabled = YES;
}



-(void)awakeFromNib{
    [self rotate];
    
    
    [self.startPickBtn setImage:[UIImage imageNamed:@"LuckyCenterButtonPressed"] forState:UIControlStateHighlighted];
    
    self.rotateView.userInteractionEnabled = YES;
    
    int count = 12;
    
    for (int i = 0; i < count; i++) {
        
        /**
         *  创建button的图片（切割图片)
         */
        UIImage *btnImg = [UIImage imageNamed:@"LuckyAstrology"];
        UIImage *selBtnImg = [UIImage imageNamed:@"LuckyAstrologyPressed"];
        
        CGFloat scale = [UIScreen mainScreen].scale;
        CGFloat PXimgW = btnImg.size.width / count * scale;
        CGFloat PXimgH = btnImg.size.height * scale;
        
        CGImageRef CGBtnImg = CGImageCreateWithImageInRect(
                                                           btnImg.CGImage, CGRectMake(i * PXimgW, 0, PXimgW, PXimgH));
        CGImageRef CGSelBtnImg = CGImageCreateWithImageInRect(
                                                              selBtnImg.CGImage, CGRectMake(i * PXimgW, 0, PXimgW, PXimgH));
        
        UIImage *newBtnImg = [UIImage imageWithCGImage:CGBtnImg];
        UIImage *newSelBtnImg = [UIImage imageWithCGImage:CGSelBtnImg];
//        NSLog(@"newBtnImg.size--%@",NSStringFromCGSize(newBtnImg.size));
        
         UIImage *backImg = [UIImage imageNamed:@"LuckyRototeSelected"];
        
        /**
         创建并设置button的初始位置和选中图片。
         */
        ZRWheelButoon *wheelBtn = [ZRWheelButoon buttonWithPicW:PXimgW/scale andPicH:PXimgH/scale];
        [self.rotateView addSubview:wheelBtn];
        
        wheelBtn.tag = i;
        wheelBtn.width = backImg.size.width;
        wheelBtn.height = backImg.size.height;
        
        NSLog(@"button.frame = %@",NSStringFromCGRect(wheelBtn.frame));
        
//            wheelBtn.backgroundColor = [UIColor redColor];
        [wheelBtn setBackgroundImage:backImg forState:UIControlStateSelected];
        
        
        

        
        wheelBtn.layer.anchorPoint = CGPointMake(0.5, 1);
        wheelBtn.center = self.center;
        
        wheelBtn.transform = CGAffineTransformMakeRotation(i * M_PI * 2 / count);
        
        /**
         *  设置切割好的图片
         */
        [wheelBtn setImage:newBtnImg forState:UIControlStateNormal];
        [wheelBtn setImage:newSelBtnImg forState:UIControlStateSelected];
        
        CGImageRelease(CGBtnImg);
        CGImageRelease(CGSelBtnImg);
        
        [wheelBtn addTarget:self
                     action:@selector(wheelBtnClicked:)
           forControlEvents:UIControlEventTouchDown];
        
        if (wheelBtn.tag == 0) {
            [self wheelBtnClicked:wheelBtn];
        }
    }



}

@end
