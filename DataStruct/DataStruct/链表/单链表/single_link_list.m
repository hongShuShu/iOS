//
//  single_link_list.m
//  DataStruct
//
//  Created by xhwl on 2018/6/5.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "single_link_list.h"

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

/**
 *  判断链表是否为空
 */
- (BOOL)is_empty {
    return self.head == NULL;
}

/**
 *  获取链表长度
 */
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

/**
 *  尾部追加元素：尾插法
 */
- (void)append:(id)element {
    Node *node = [[Node alloc] initWithElement:element];
    
    if ([self is_empty]) {
        self.head = node;
    } else {
        Node *cur = self.head;
        while (cur.next != NULL) {
            NSLog(@"next = %@",cur.next);
            cur = cur.next;
        }
        cur.next = node;
    }
}

/**
 *  头部插入元素：头插法
 */
- (void)add:(id)element {
    Node *node = [[Node alloc] initWithElement:element];
    
    node.next = self.head;
    self.head = node;
}

/**
 *  指定位置插入元素
 *  index 从0开始
 */
- (void)insertAtIndex:(NSInteger)index element:(id)element {
    if (index <= 0) { // 空链表
        [self add:element];
    } else if (index > self.length - 1) {
        [self append:element];
    } else {
        Node *pre = self.head;
        NSInteger count = 0;
        while (count < (index - 1)) {
            count += 1;
            pre = pre.next;
        }
        
        // 当循环退出后，pre指向pos-1位置
        Node *node = [[Node alloc] initWithElement:element];
        node.next = pre.next;
        pre.next = node;
    }
}

/**
 *  删除节点
 */
- (void)remove:(id)element {
    Node *cur = self.head;
    Node *pre = NULL;
    while (cur != NULL) {
        if (cur.elem == element) {
            // 先判断此结点是否是头结点
            if (cur == self.head) {
                self.head = cur.next;
            } else {
                pre.next = cur.next;
            }
            break;
        } else {
            pre = cur;
            cur = cur.next;
        }
    }
}

/**
 *  查找元素是否存在
 */
- (BOOL)findElement:(id)element {
    Node *cur = self.head;
    
    while (cur != NULL) {
        if (cur.elem == element) {
            return YES;
        } else {
            cur = cur.next;
        }
    }
    return NO;
}

/**
 *  遍历链表
 */
- (void)travel {
    Node *cur = self.head;
    
    while (cur != NULL) {
        NSLog(@"元素：%@",cur.elem);
        cur = cur.next;
    }
}



@end
