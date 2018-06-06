//
//  DoubleNode.h
//  DataStruct
//
//  Created by xhwl on 2018/6/6.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  一个指向前一个节点，当此节点为第一个节点时，指向空值；
 *  而另一个指向下一个节点，当此节点为最后一个节点时，指向空值。
 */
@interface DoubleNode : NSObject

// 节点存储的元素值
@property (nonatomic, strong) id elem;
// 指向下一个节点
@property (nonatomic, strong) DoubleNode *next;
// 指向上一个节点
@property (nonatomic, strong) DoubleNode *prev;


- (instancetype)initWithElement:(id)elem;


@end
