//
//  BubbleSort.h
//  DataStruct
//
//  Created by xhwl on 2018/6/7.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//  冒泡排序

#import "SortObject.h"

/** 工作原理:
 *  重复地遍历要排序的数列，一次比较两个元素，如果他们的顺序错误就把他们交换过来。
 */
@interface BubbleSort : SortObject

+ (NSArray *)desc_sort:(NSArray *)dataArray;
+ (NSArray *)asc_sort:(NSArray *)dataArray;

@end
