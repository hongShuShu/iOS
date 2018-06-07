//
//  Node.h
//  DataStruct
//
//  Created by xhwl on 2018/6/5.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//  节点

#import <Foundation/Foundation.h>

@interface Node : NSObject

// 节点存储的元素值
@property (nonatomic, strong) id elem;
// 指向下一个节点的指针
@property (nonatomic, strong) id next;


- (instancetype)initWithElement:(id)elem;

@end
