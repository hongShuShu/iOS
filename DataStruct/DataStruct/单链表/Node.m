//
//  Node.m
//  DataStruct
//
//  Created by xhwl on 2018/6/5.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "Node.h"

@interface Node ()

@end

@implementation Node

- (instancetype)initWithElement:(id)elem {
    if (self = [super init]) {
        self.elem = elem;
        self.next = NULL;
    }
    return self;
}

@end
