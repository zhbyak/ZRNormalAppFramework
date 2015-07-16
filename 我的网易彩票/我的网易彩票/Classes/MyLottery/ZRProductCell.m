//
//  ZRProductCell.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/23.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRProductCell.h"

@interface ZRProductCell ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end



@implementation ZRProductCell

- (void)awakeFromNib {
    // Initialization code
    self.imageView.layer.cornerRadius = 13;
    self.imageView.layer.masksToBounds = YES;
    self.imageView.clipsToBounds = YES;
   
}

-(void)setProduct:(ZRProduct *)product{
    
   
    
    self.imageView.image = [UIImage imageNamed:product.icon];
    self.nameLabel.text = product.title;
    
    //未完待续...

}






@end
