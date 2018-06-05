//
//  single_link_list.m
//  DataStruct
//
//  Created by xhwl on 2018/6/5.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "single_link_list.h"

@interface Node ()

@property (nonatomic, strong) id elem;
@property (nonatomic, assign) id next;

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

@interface SingleLinkList ()

@property (nonatomic, strong) Node *head;

@end


@implementation SingleLinkList

- (instancetype)initWithNode:(Node *)node {
    if (self = [super init]) {
        self.head = node;
    }
    return self;
}

- (BOOL)is_empty {
    return self.head == NULL;
}

- (NSInteger)length {
    // cur游标，用来移动遍历节点
    Node *cur = self.head;
    NSInteger count = 0;
    while (cur != NULL) {
        count += 1;
        cur = cur.next;
    }
    
    return count;
}

- (void)append:(Node *)node {
    node = [[Node alloc] initWithElement:node];
    
    if ([self is_empty]) {
        self.head = node;
    } else {
        Node *cur = self.head;
        while (cur.next != NULL) {
            cur = cur.next;
            cur.next = NULL;
        }
    }
}






@end
