//
//  SortObject.m
//  DataStruct
//
//  Created by xhwl on 2018/6/7.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "SortObject.h"

@implementation SortObject

+ (NSArray *)sort:(NSArray *)dataArray {
    return dataArray;
}

+ (void)printArray:(NSArray *)dataArray {
    for (NSNumber *number in dataArray) {
        NSLog(@"number:%@",number);
    }
}


+ (NSArray *)testArray {
    return @[@5,@2,@1,@4,@3,@0];
}

@end
