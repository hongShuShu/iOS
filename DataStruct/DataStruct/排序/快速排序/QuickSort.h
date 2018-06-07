//
//  QuickSort.h
//  DataStruct
//
//  Created by xhwl on 2018/6/7.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//  快速排序

#import "SortObject.h"

/** 工作原理:
 *  通过一趟排序将要排序的数据分割成独立的两部分，
 *  其中一部分的所有数据都比另外一部分的所有数据都要小，
 *  然后再按此方法对这两部分数据分别进行快速排序，整个排序过程可以递归进行，
 *  以此达到整个数据变成有序。
 */
@interface QuickSort : SortObject

@end
