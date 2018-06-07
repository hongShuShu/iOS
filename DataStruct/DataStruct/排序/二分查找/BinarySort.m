//
//  BinarySort.m
//  DataStruct
//
//  Created by xhwl on 2018/6/7.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "BinarySort.h"

@implementation BinarySort

// 递归
+ (BOOL)digui_search:(NSArray *)array item:(NSNumber *)item {
    NSMutableArray *dataArray = [NSMutableArray arrayWithArray:array];
    NSInteger count = dataArray.count;
    
//    NSMutableArray *tmp = [NSMutableArray arrayWithArray:@[@17, @20, @26, @31, @44, @54]];
//    NSArray *ttt = [tmp subarrayWithRange:NSMakeRange(2, count-2)];
//    NSLog(@"%@",ttt);
    
    if (count > 0) {
        NSInteger mid = count/2;
        if (dataArray[mid] == item) {
            return YES;
        } else if (item < dataArray[mid]) {
            NSMutableArray *array = [NSMutableArray arrayWithArray:[dataArray subarrayWithRange:NSMakeRange(0, mid)]];
            return [self digui_search:array item:item];
        } else {
            NSMutableArray *array = [NSMutableArray arrayWithArray:[dataArray subarrayWithRange:NSMakeRange(mid+1, count-mid-1)]];
            return [self digui_search:array item:item];
        }
    }
    return NO;
}

+ (BOOL)normal_search:(NSArray *)array item:(NSNumber *)item {
    NSMutableArray *dataArray = [NSMutableArray arrayWithArray:array];
    NSInteger count = dataArray.count;
    
    NSInteger first = 0;
    NSInteger last = count-1;
    while (first <= last) {
        NSInteger mid = (first + last)/2;
        if (array[mid] == item) {
            return YES;
        } else if (item < array[mid]) {
            last = mid - 1;
        } else {
            first = mid + 1;
        }
    }
    
    return NO;
}


@end
