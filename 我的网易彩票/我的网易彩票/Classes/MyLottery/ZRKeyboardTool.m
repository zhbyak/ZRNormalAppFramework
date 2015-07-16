//
//  ZRKeyboardTool.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/21.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRKeyboardTool.h"

@interface ZRKeyboardTool ()

@property (weak, nonatomic) IBOutlet UIImageView *fuck;


@end

@implementation ZRKeyboardTool
+(instancetype)keyboardToll{
    
    return [[[NSBundle mainBundle] loadNibNamed:@"ZRKeyboardTool" owner:nil options:nil] lastObject];

}


- (IBAction)cancel:(id)sender {
    if ([self.delegate respondsToSelector:@selector(keyboardTool:didClickedCancel:)]) {
        [self.delegate keyboardTool:self didClickedCancel:nil];
    }
  
}

- (IBAction)sure:(id)sender {
    if ([self.delegate respondsToSelector:@selector(keyboardTool:didClickedSure:)]) {
        [self.delegate keyboardTool:self didClickedSure:nil];
    }
   
}



@end
