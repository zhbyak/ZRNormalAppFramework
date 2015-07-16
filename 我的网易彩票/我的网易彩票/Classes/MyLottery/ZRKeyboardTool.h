//
//  ZRKeyboardTool.h
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/21.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZRKeyboardTool;

@protocol ZRKeyboardToolDelegage <NSObject>

-(void)keyboardTool:(ZRKeyboardTool *)kb didClickedCancel:(id)sender;
-(void)keyboardTool:(ZRKeyboardTool *)kb didClickedSure:(id)sender;


@end


@interface ZRKeyboardTool : UIView

@property (nonatomic,weak) id<ZRKeyboardToolDelegage> delegate;

+(instancetype)keyboardToll;

@end
