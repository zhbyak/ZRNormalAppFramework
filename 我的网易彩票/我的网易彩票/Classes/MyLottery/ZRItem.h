//
//  ZRItem.h
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/17.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^ZRItemOption)();

@interface ZRItem : NSObject
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *subTitle;
@property (nonatomic,copy) NSString *time;

+(instancetype)itemWithTitle:(NSString *)title;
+ (instancetype)itemWithTitle:(NSString *)title icon:(NSString *)icon;

//给子类继承的属性
@property (strong,nonatomic) Class desController;

@property (nonatomic,copy) ZRItemOption option;

@end
