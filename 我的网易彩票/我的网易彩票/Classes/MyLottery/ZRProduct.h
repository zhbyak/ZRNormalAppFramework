//
//  ZRProduct.h
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/23.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import <Foundation/Foundation.h>



//"title": "网易电影票",
//"id": "com.netease.movie",
//"url": "http://itunes.apple.com/app/id583784224?mt=8",
//"icon": "movie@2x.png",
//"customUrl": "movieticket163"

@interface ZRProduct : NSObject

@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *id;
@property (nonatomic,copy) NSString *url;
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *customUrl;

+(instancetype)productWithDict:(NSDictionary *)dict;

@end
