//
//  double_link_list.h
//  DataStruct
//
//  Created by xhwl on 2018/6/6.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//  双链表

#import <Foundation/Foundation.h>

@class DoubleNode;
@interface DoubleLinkList : NSObject


- (instancetype)initWithNode:(DoubleNode *)node;

/**
 *  链表是否为空
 */
- (BOOL)is_empty;

/**
 *  获取链表长度
 */
- (NSInteger)length;

/**
 *  尾部追加元素
 */
- (void)append:(id)element;

/**
 *  头部插入元素：头插法
 */
- (void)add:(id)element;

/**
 *  指定位置插入元素
 *  index 从0开始
 */
- (void)insertAtIndex:(NSInteger)index element:(id)element;

/**
 *  删除节点
 */
- (void)remove:(id)element;

/**
 *  查找元素是否存在
 */
- (BOOL)findElement:(id)element;

/**
 *  遍历链表
 */
- (void)travel;

@end
