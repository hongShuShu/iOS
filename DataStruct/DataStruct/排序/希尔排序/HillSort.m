//
//  HillSort.m
//  DataStruct
//
//  Created by xhwl on 2018/6/7.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "HillSort.h"

@implementation HillSort

+ (NSArray *)sort:(NSArray *)dataArray {
    NSMutableArray *array = [NSMutableArray arrayWithArray:dataArray];
    NSInteger count = dataArray.count;
    NSInteger i, j, gap;
    
    for (gap = count / 2; gap > 0; gap /= 2) {
        for (i = gap; i < count; i++) {
            for (j = i - gap; j >= 0 && array[j] > array[j+gap]; j-=gap) {
                [array exchangeObjectAtIndex:j withObjectAtIndex:j+gap];
            }
        }
    }
    
    return array;
}

@end
