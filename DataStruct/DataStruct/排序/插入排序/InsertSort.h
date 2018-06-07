//
//  InsertSort.h
//  DataStruct
//
//  Created by xhwl on 2018/6/7.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//  插入排序

#import <Foundation/Foundation.h>

/** 工作原理:
 *  通过构建有序序列，对于未排序数据，在已排序序列中从后向前扫描，找到相应位置并插入。
 *  在从后向前扫描过程中，需要反复把已排序元素逐步向后挪位，为最新元素提供插入空间。
 */
@interface InsertSort : NSObject

+ (NSArray *)sort:(NSArray *)dataArray;

@end
