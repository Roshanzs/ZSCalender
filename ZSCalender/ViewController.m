//
//  ViewController.m
//  ZSCalender
//
//  Created by 紫贝壳 on 2017/4/17.
//  Copyright © 2017年 stark. All rights reserved.
//

#import "ViewController.h"
#import "ZSCalenderView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGSize size = [UIScreen mainScreen].bounds.size;
    
    // demo1
    ZSCalenderView *calendarView = [[ZSCalenderView alloc] init];
    calendarView.frame = CGRectMake(10, 30, size.width-20, 200);
    [self.view addSubview:calendarView];
    
    //设置已经签到的天数日期
    NSMutableArray* _signArray = [[NSMutableArray alloc] init];
    [_signArray addObject:[NSNumber numberWithInt:3]];
    [_signArray addObject:[NSNumber numberWithInt:4]];
    [_signArray addObject:[NSNumber numberWithInt:5]];
    calendarView.signArray = _signArray;
    
    
    calendarView.date = [NSDate date];
    
    
    NSDateComponents *comp = [[NSCalendar currentCalendar] components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:[NSDate date]];
    //日期点击事件
    __weak typeof(ZSCalenderView) *weakDemo = calendarView;
    calendarView.calendarBlock =  ^(NSInteger day, NSInteger month, NSInteger year){
        if ([comp day]==day) {
            NSLog(@"%li-%li-%li", year,month,day);
            //根据自己逻辑条件 设置今日已经签到的style 没有签到不需要写
            [weakDemo setStyle_Today_Signed:weakDemo.dayButton];
        }
    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
