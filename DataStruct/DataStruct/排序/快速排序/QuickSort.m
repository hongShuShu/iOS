//
//  QuickSort.m
//  DataStruct
//
//  Created by xhwl on 2018/6/7.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

+ (NSArray *)sort:(NSArray *)dataArray {
    NSMutableArray *array = [NSMutableArray arrayWithArray:dataArray];
    NSInteger count = dataArray.count;
    
    [self sort:array left:0 right:count-1];
    
    return array;
}

+ (void)sort:(NSMutableArray *)array left:(NSInteger)left right:(NSInteger)right {
    if (left > right) {
        return;
    }
    NSInteger storeIndex = [self partition:array left:left right:right];
    [self sort:array left:0 right:storeIndex-1];
    [self sort:array left:storeIndex+1 right:right];
}

+ (NSInteger)partition:(NSMutableArray *)array left:(NSInteger)left right:(NSInteger)right {
    // 数组分区，左小右大
    NSInteger storeIndex = left;
    // 选最右边的元素为基准元素
    NSNumber *pivot = array[right];
    for (NSInteger i = left; i < right; i++) {
        if (array[i] < pivot) {
            [array exchangeObjectAtIndex:storeIndex withObjectAtIndex:i];
            // 交换位置后，storeIndex 自增 1，代表下一个可能要交换的位置
            storeIndex++;
        }
    }
    // 将基准元素放置到最后的正确位置上
    [array exchangeObjectAtIndex:right withObjectAtIndex:storeIndex];
    
    return storeIndex;
}


@end
