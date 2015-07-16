//
//  ZRProduct.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/23.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRProduct.h"

@implementation ZRProduct

+(instancetype)productWithDict:(NSDictionary *)dict{
    ZRProduct *product = [[self alloc] init];
    
    [product setValuesForKeysWithDictionary:dict];
    
    
    return product;
}


@end
