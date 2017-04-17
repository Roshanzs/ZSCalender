//
//  ZSCalenderView.h
//  ZSCalender
//
//  Created by 紫贝壳 on 2017/4/17.
//  Copyright © 2017年 stark. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZSCalenderTool.h"

@interface ZSCalenderView : UIView


@property (nonatomic, strong) NSDate *date;
@property (nonatomic, copy) void(^calendarBlock)(NSInteger day, NSInteger month, NSInteger year);

@property (nonatomic,strong)  NSMutableArray *signArray;

//今天
@property (nonatomic,strong)  UIButton *dayButton;


- (void)setStyle_Today_Signed:(UIButton *)btn;
- (void)setStyle_Today:(UIButton *)btn;

@end
