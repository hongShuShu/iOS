//
//  single_cycle_link_list.m
//  DataStruct
//
//  Created by xhwl on 2018/6/5.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//  

#import "single_cycle_link_list.h"

@interface SingleCycleLinkList ()

@property (nonatomic, strong) Node *head;

@end


@implementation SingleCycleLinkList

- (instancetype)initWithNode:(Node *)node {
    if (self = [super init]) {
        self.head = node;
        
        /** 单向循环链表：尾节点的下一个指针指向头结点 */
        if (node) {
            node.next = node;
        }
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
    if (self.is_empty) {
        return 0;
    }
    
    // cur游标，用来移动遍历节点
    Node *cur = self.head;
    NSInteger count = 1;
    while (cur.next != self.head) {
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
        node.next = node;
    } else {
        Node *cur = self.head;
        while (cur.next != self.head) {
            cur = cur.next;
        }
        
        node.next = self.head;
        cur.next = node;
    }
}

/**
 *  头部插入元素：头插法
 */
- (void)add:(id)element {
    Node *node = [[Node alloc] initWithElement:element];
    
    if (self.is_empty) {
        self.head = node;
        node.next = node;
    } else {
        Node *cur = self.head;
        while (cur.next != self.head) {
            cur = cur.next;
        }
        
        // 当循环退出，cur指向尾节点
        node.next = self.head;
        self.head = node;
        cur.next = self.head;
    }
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
    if (self.is_empty) {
        return;
    }
    
    Node *cur = self.head;
    Node *pre = NULL;
    while (cur.next != self.head) {
        if (cur.elem == element) {
            // 先判断此结点是否是头结点
            if (cur == self.head) { // 头节点
                // 先找尾节点
                Node *rear = self.head;
                while (rear.next != self.head) {
                    rear = rear.next;
                }
                self.head = cur.next;
                rear.next = self.head;
                
            } else { // 中间节点
                pre.next = cur.next;
            }
            return;
        } else {
            pre = cur;
            cur = cur.next;
        }
    }
    
    // 退出循环，cur指向尾节点
    if (cur.elem == element) {
        if (cur == self.head) { // 说明链表只有一个结点
            self.head = NULL;
        } else {
            pre.next = cur.next;
        }
    }
}

/**
 *  查找元素是否存在
 */
- (BOOL)findElement:(id)element {
    Node *cur = self.head;
    if (self.is_empty) {
        return NO;
    }
    
    while (cur.next != self.head) {
        if (cur.elem == element) {
            return YES;
        } else {
            cur = cur.next;
        }
    }
    
    // 退出循环，cur指向尾节点
    if (cur.elem == element) {
        return YES;
    }
    
    return NO;
}

/**
 *  遍历链表
 */
- (void)travel {
    if (self.is_empty) {
        return;
    }
    
    Node *cur = self.head;
    
    while (cur.next != self.head) {
        NSLog(@"元素：%@",cur.elem);
        cur = cur.next;
    }
    // 退出循环，cur指向尾节点，但尾节点元素未打印
    NSLog(@"元素：%@",cur.elem);
}

@end
