//
//  HillSort.h
//  DataStruct
//
//  Created by xhwl on 2018/6/7.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "SortObject.h"

/** 工作原理:
 *  将数组列在一个表中并对列分别进行插入排序，重复这过程，
 *  不过每次用更长的列（步长更长了，列数更少了）来进行。最后整个表就只有一列了。
 */
@interface HillSort : SortObject

@end
