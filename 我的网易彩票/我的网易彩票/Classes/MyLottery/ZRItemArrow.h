//
//  ZRItemArrow.h
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/17.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRItem.h"




@interface ZRItemArrow : ZRItem



+(instancetype) itemWithTitle:(NSString *)title icon:(NSString *)icon itemOption:(ZRItemOption)option;

+(instancetype) itemWithTitle:(NSString *)title icon:(NSString *)icon desController:(Class)desController;

+ (instancetype)itemWithTitle:(NSString *)title  destController:(Class)desController;

@end
