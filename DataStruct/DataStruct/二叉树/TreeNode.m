//
//  TreeNode.m
//  DataStruct
//
//  Created by xhwl on 2018/6/11.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "TreeNode.h"

@implementation TreeNode

+ (instancetype)treeNodeWithElement:(id)element {
    TreeNode *node = [[TreeNode alloc] init];
    node.element = element;
    node.left_child = NULL;
    node.right_child = NULL;
    
    return node;
}

@end
