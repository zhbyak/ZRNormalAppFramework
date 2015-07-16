//
//  ZRItemArrow.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/17.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRItemArrow.h"

@implementation ZRItemArrow

+ (instancetype)itemWithTitle:(NSString *)title
                         icon:(NSString *)icon
                   itemOption:(ZRItemOption)option {
  ZRItemArrow *item = [self itemWithTitle:title icon:icon];
  item.option = option;

  return item;
}

+(instancetype)itemWithTitle:(NSString *)title icon:(NSString *)icon desController:(Class)desController{
    ZRItemArrow *item = [self itemWithTitle:title icon:icon];
    item.desController = desController;
    
    return item;

}

+ (instancetype)itemWithTitle:(NSString *)title  destController:(Class)desController{
    ZRItemArrow *item = [self itemWithTitle:title icon:nil];
    item.desController = desController;
    
    return item;


}


@end
