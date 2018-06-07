//
//  InsertSort.m
//  DataStruct
//
//  Created by xhwl on 2018/6/7.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "InsertSort.h"

@implementation InsertSort

+ (NSArray *)sort:(NSArray *)dataArray {
    NSMutableArray *array = [NSMutableArray arrayWithArray:dataArray];
    NSInteger count = dataArray.count;

    for (NSInteger i=1; i<count; i++) {
        if (array[i - 1] > array[i]) {
            NSNumber *temp = array[i];
            NSInteger j = i;
            while (j > 0 && array[j - 1] > temp) {
                array[j] = array[j - 1];
                j--;
            }
            array[j] = temp;
        }
    }

    return array;
}

@end
