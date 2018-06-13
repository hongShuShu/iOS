//
//  TreeNode.h
//  DataStruct
//
//  Created by xhwl on 2018/6/11.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//  二叉树的一个结点

#import <Foundation/Foundation.h>

@interface TreeNode : NSObject

/** 本身的值 */
@property (nonatomic, strong) id element;
/** 左节点 */
@property (nonatomic, strong) id left_child;
/** 右节点 */
@property (nonatomic, strong) id right_child;

+ (instancetype)treeNodeWithElement:(id)element;

@end
