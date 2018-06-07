//
//  BinarySort.h
//  DataStruct
//
//  Created by xhwl on 2018/6/7.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "SortObject.h"

/** 工作原理:
 *  表中元素是按升序排列，
 *  将表中间位置记录的关键字与查找关键字比较，如果两者相等，则查找成功；
 *  否则利用中间位置记录将表分成前、后两个子表，如果中间位置记录的关键字大于查找关键字，
 *  则进一步查找前一子表，否则进一步查找后一子表。
 */
@interface BinarySort : SortObject

// 递归查找
+ (BOOL)digui_search:(NSArray *)array item:(NSNumber *)item;
// 非递归
+ (BOOL)normal_search:(NSArray *)array item:(NSNumber *)item;

@end
