//
//  ZSCalenderTool.h
//  ZSCalender
//
//  Created by 紫贝壳 on 2017/4/17.
//  Copyright © 2017年 stark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZSCalenderTool : NSObject

+ (NSInteger)day:(NSDate *)date;
+ (NSInteger)month:(NSDate *)date;
+ (NSInteger)year:(NSDate *)date;

+ (NSInteger)firstWeekdayInThisMonth:(NSDate *)date;
+ (NSInteger)totaldaysInMonth:(NSDate *)date;

+ (NSDate *)lastMonth:(NSDate *)date;
+ (NSDate*)nextMonth:(NSDate *)date;

@end
