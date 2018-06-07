//
//  SelectSort.m
//  DataStruct
//
//  Created by xhwl on 2018/6/7.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "SelectSort.h"

@implementation SelectSort

+ (NSArray *)sort:(NSArray *)dataArray {
    NSMutableArray *array = [NSMutableArray arrayWithArray:dataArray];
    NSInteger count = dataArray.count;
    NSInteger minIndex;
    NSNumber *minValue;
    
    for (int i=0; i<count-1; i++) {
        minIndex = i;
        minValue = array[minIndex];
        for (int j = i + 1; j < count; j++) {
            if (array[j] < minValue) {
                minIndex = j;
                minValue = array[minIndex];
            }
        }
        
        NSNumber *temp = array[i];
        array[i] = minValue;
        array[minIndex] = temp;
    }
    return array;
}

@end
