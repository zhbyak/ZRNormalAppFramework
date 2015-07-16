//
//  ZRTabBar.h
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/14.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZRTabBar;
@protocol ZRTabBarDelegate <NSObject>

-(void)zrTabBar:(ZRTabBar *)zrTabBar withTag:(NSInteger) tag;

@end


@interface ZRTabBar : UIView

@property (nonatomic,weak) id<ZRTabBarDelegate> delegate;


-(void) addTabBarItem:(NSString *)sbName;
@end
