//
//  ZRItemCell.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/18.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRItemCell.h"
#import "ZRItemArrow.h"
#import "ZRItemSwitch.h"
#import "ZRItemLabel.h"

@implementation ZRItemCell

+(instancetype)cellWithTableView:(UITableView *)tableView{
    
    return [self cellWithTableView:tableView style:UITableViewCellStyleDefault];

}

+(instancetype)cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style{
    
    static NSString *reuseId = @"zr";
    
    ZRItemCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    
    if (cell ==nil) {
        
        cell  = [[self alloc] initWithStyle:style reuseIdentifier:reuseId];
        
    }
    return cell;
    
}


//设置item的时候 为cell的内部内容赋值.
-(void)setItem:(ZRItem *)item{
    _item = item;
    //判断是否cell的展示包含图片。
    if (item.icon) {
        self.imageView.image = [UIImage imageNamed:item.icon];
    }
    
    if (item.subTitle) {
        self.detailTextLabel.text = item.subTitle;
    }
    
    
    self.textLabel.text = item.title;
    
    if ([item isKindOfClass:[ZRItemArrow class]]) {
        self.accessoryView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }else if([item isKindOfClass:[ZRItemSwitch class]]){
        self.accessoryView = [[UISwitch alloc] init];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }else if([item isKindOfClass:[ZRItemLabel class]]){
        
        UILabel *timeLabel = [UILabel new];
        timeLabel.text = item.time;
        timeLabel.textColor = [UIColor grayColor];
        [timeLabel sizeToFit];
        
        self.accessoryView = timeLabel;
        
        
    }else{
        self.accessoryView = nil;
    }


}
@end
