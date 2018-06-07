//
//  MergeSort.m
//  DataStruct
//
//  Created by xhwl on 2018/6/7.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "MergeSort.h"

@implementation MergeSort

+ (NSArray *)sort:(NSArray *)dataArray {
    NSMutableArray *array = [NSMutableArray arrayWithArray:dataArray];
    NSInteger count = dataArray.count;
    
    return [self sort:array low:0 high:count-1];
}

+ (NSMutableArray *)sort:(NSMutableArray *)nums low:(NSInteger)low high:(NSInteger)high {
    NSInteger mid = (low+high)/2;
    if(low<high) {
        // 处理左边
        [self sort:nums low:low high:mid];
        // 处理右边
        [self sort:nums low:mid+1 high:high];
        // 左右归并
        [self merge:nums low:low mid:mid high:high];
    }
    return nums;
}
+ (void)merge:(NSMutableArray *)nums low:(NSInteger)low mid:(NSInteger)mid high:(NSInteger)high {
    NSMutableArray *temp = [NSMutableArray arrayWithCapacity:high-low+1];
    NSInteger i = low;
    NSInteger j = mid+1;
    NSInteger k = 0;
    
    // 找出较小值元素放入temp数组中
    while(i<=mid && j<=high) {
        if(nums[i]<nums[j]) {
            temp[k++] = nums[i++];
        } else {
            temp[k++] = nums[j++];
        }
    }
    
    // 处理较长部分
    while(i<=mid) {
        temp[k++] = nums[i++];
    }
    
    while(j<=high) {
        temp[k++] = nums[j++];
    }
    
    // 使用temp中的元素覆盖nums中元素
    for (int k2 = 0; k2 < temp.count; k2++) {
        nums[k2+low] = temp[k2];
    }
}


@end
