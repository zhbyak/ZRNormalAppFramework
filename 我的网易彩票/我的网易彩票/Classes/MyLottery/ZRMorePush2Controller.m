//
//  ZRMorePush2Controller.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/18.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRMorePush2Controller.h"
#import "ZRKeyboardTool.h"

@interface ZRMorePush2Controller ()<ZRKeyboardToolDelegage>

@property (strong,nonatomic) NSIndexPath *indexPath;
@property (nonatomic,weak) UIDatePicker *datePicker;


@end

@implementation ZRMorePush2Controller

-(void)setData{
    ZRItem *item11 = [ZRItemSwitch itemWithTitle:@"推送我关注的比赛"];
    ZRGroup *group1 = [ZRGroup groupWithItems:@[item11] footer:@"开启后，当我投注或关注的比赛开始、进球和结束时，会自动发送推送消息提醒我"];
    
    ZRItem *item21 = [ZRItemLabel itemWithTitle:@"起始时间" time:@"00:00"];
    ZRGroup *group2 = [ZRGroup groupWithItems:@[item21] header:@"只在以下时间段接受比分和直播推送"];
    
    ZRItem *item31 = [ZRItemLabel itemWithTitle:@"结束时间" time:@"00:00"];
    ZRGroup *group3 = [ZRGroup groupWithItems:@[item31]];
    
    self.groups = @[group1,group2,group3];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    self.indexPath = indexPath;
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //找到那个cell
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    

    if (((ZRItemCell *)cell).item.time) {
        UITextField *textField = [[UITextField alloc] init];
        [cell addSubview:textField];
        
        UIDatePicker *datePicker = [[UIDatePicker alloc] init];
        datePicker.datePickerMode = UIDatePickerModeTime;
        self.datePicker = datePicker;
        
        ZRKeyboardTool *tool = [ZRKeyboardTool keyboardToll];
        
        textField.inputView = datePicker;
        textField.inputAccessoryView = tool;
        
        tool.delegate = self;
        
        
        
        
        [textField becomeFirstResponder];

        
    }
}

/**
 *ZRKeyboardToolDelegage代理方法
 */
-(void)keyboardTool:(ZRKeyboardTool *)kb didClickedCancel:(id)sender{
    [self.view endEditing:YES];
    
}

-(void)keyboardTool:(ZRKeyboardTool *)kb didClickedSure:(id)sender{
    NSDate *now = self.datePicker.date;
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.dateFormat = @"HH:mm";
    NSString *time = [df stringFromDate:now];
    
    ZRGroup *group = self.groups[self.indexPath.section];
    ZRItemLabel *item = group.items[self.indexPath.row];
    
    item.time = time;
    
    [self.tableView reloadRowsAtIndexPaths:@[self.indexPath] withRowAnimation:UITableViewRowAnimationRight];
    
    
    
    
}

@end
