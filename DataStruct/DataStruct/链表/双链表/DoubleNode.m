//
//  DoubleNode.m
//  DataStruct
//
//  Created by xhwl on 2018/6/6.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "DoubleNode.h"

@implementation DoubleNode

- (instancetype)initWithElement:(id)elem {
    if (self = [super init]) {
        self.elem = elem;
        self.next = NULL;
        self.prev = NULL;
    }
    return self;
}

@end
