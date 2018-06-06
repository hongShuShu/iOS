//
//  double_link_list.m
//  DataStruct
//
//  Created by xhwl on 2018/6/6.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "double_link_list.h"
#import "DoubleNode.h"

@interface DoubleLinkList ()

@property (nonatomic, strong) DoubleNode *head;

@end

/**
 *  一个指向前一个节点，当此节点为第一个节点时，指向空值；
 *  而另一个指向下一个节点，当此节点为最后一个节点时，指向空值。
 */
@implementation DoubleLinkList

- (instancetype)initWithNode:(DoubleNode *)node {
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
    DoubleNode *cur = self.head;
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
    DoubleNode *node = [[DoubleNode alloc] initWithElement:element];
    
    if ([self is_empty]) {
        self.head = node;
    } else {
        DoubleNode *cur = self.head;
        while (cur.next != NULL) {
            cur = cur.next;
        }
        cur.next = node;
        node.prev = cur;
    }
}

/**
 *  头部插入元素：头插法
 */
- (void)add:(id)element {
    DoubleNode *node = [[DoubleNode alloc] initWithElement:element];
    
    node.next = self.head;
    self.head = node;
    node.next.prev = node;
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
        DoubleNode *cur = self.head;
        NSInteger count = 0;
        while (count < index) {
            count += 1;
            cur = cur.next;
        }
        
        // 当循环退出后，pre指向pos位置
        DoubleNode *node = [[DoubleNode alloc] initWithElement:element];
        node.next = cur;
        node.prev = cur.prev;
        cur.prev.next = node;
        cur.prev = node;
    }
}

/**
 *  删除节点
 */
- (void)remove222:(id)element {
    if (self.is_empty) {
        return;
    }
    
    DoubleNode *cur = self.head;
    if (cur.elem == element) {
        // 首节点的元素即是要删除的元素
        if (cur.next == NULL) {
            // 如果链表只有一个节点
            self.head = NULL;
        } else {
            // 将第二个节点的prev设置为None
            cur.next.prev = NULL;
            // 将_head指向第二个节点
            self.head = cur.next;
        }
        return;
    }
    
    while (cur != NULL) {
        if (cur.elem == element) {
            // 将cur的前一个节点的next指向cur的后一个节点
            cur.prev.next = cur.next;
            // 将cur的后一个节点的prev指向cur的前一个节点
            cur.next.prev = cur.prev;
            break;
        }
        cur = cur.next;
    }
}
- (void)remove:(id)element {
    DoubleNode *cur = self.head;
    while (cur != NULL) {
        if (cur.elem == element) {
            // 先判断此结点是否是头结点
            if (cur == self.head) {
                self.head = cur.next;
                // 判断链表是否只有一个结点
                if (cur.next) {
                    cur.next.prev = NULL;
                }
            } else {
                cur.prev.next = cur.next;
                if (cur.next) {
                    cur.next.prev = cur.prev;
                }
            }
            break;
        } else {
            cur = cur.next;
        }
    }
}

/**
 *  查找元素是否存在
 */
- (BOOL)findElement:(id)element {
    DoubleNode *cur = self.head;
    
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
    DoubleNode *cur = self.head;
    
    while (cur != NULL) {
        NSLog(@"元素：%@",cur.elem);
        cur = cur.next;
    }
}


@end
