//
//  ZRMoreFeatureCell.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/24.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRMoreFeatureCell.h"
#import "ZRTabBarController.h"

@interface ZRMoreFeatureCell ()

@property (weak, nonatomic) IBOutlet UIImageView *backImage;



@end



@implementation ZRMoreFeatureCell

-(void)setBackImgName:(NSString *)backImgName{
    _backImgName = backImgName;
    self.backImage.image = [UIImage imageNamed:backImgName];
}





@end
