//
//  SelectSort.h
//  DataStruct
//
//  Created by xhwl on 2018/6/7.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//  选择排序

#import <Foundation/Foundation.h>

/**
 *  工作原理:
 *  首先在未排序序列中找到最小（大）元素，存放到排序序列的起始位置，
 *  再从剩余未排序元素中继续寻找最小（大）元素，然后放到已排序序列的末尾。
 *  直到所有元素均排序完毕。
 */
@interface SelectSort : NSObject

+ (NSArray *)sort:(NSArray *)dataArray;

@end
