//
//  ZRGroup.h
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/17.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZRGroup : NSObject

@property (strong,nonatomic) NSArray *items;

@property (nonatomic,copy) NSString *header;

@property (nonatomic,copy) NSString *footer;

+(instancetype)groupWithItems:(NSArray *)items;

+(instancetype)groupWithItems:(NSArray *)items header:(NSString *)header;

+(instancetype)groupWithItems:(NSArray *)items footer:(NSString *)footer;

+(instancetype)groupWithItems:(NSArray *)items header:(NSString *)header footer:(NSString *)footer;
@end
