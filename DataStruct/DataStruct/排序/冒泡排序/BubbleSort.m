//
//  BubbleSort.m
//  DataStruct
//
//  Created by xhwl on 2018/6/7.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort


+ (NSArray *)desc_sort:(NSArray *)dataArray {
    NSMutableArray *array = [NSMutableArray arrayWithArray:dataArray];
    NSInteger count = dataArray.count;
    for (int i=0; i<count; i++) {
        for (int j=0; j<count-1; j++) {
            if (array[j] < array[j+1]) {
//                NSNumber *number = array[j+1];
//                array[j+1] = array[j];
//                array[j] = number;
                
                [array exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }
    return array;
}

+ (NSArray *)asc_sort:(NSArray *)dataArray {
    NSMutableArray *array = [NSMutableArray arrayWithArray:dataArray];
    NSInteger count = dataArray.count;
    for (int i=0; i<count; i++) {
        for (int j=0; j<count-1; j++) {
            if (array[j] > array[j+1]) {
                [array exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }
    return array;
}

/**
 a=a+b;
 b=a-b;
 a=a-b;
*/
/**
 a=a^b;
 b=a^b;
 a=a^b;
 */


@end
