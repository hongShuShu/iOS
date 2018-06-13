//
//  Tree.m
//  DataStruct
//
//  Created by xhwl on 2018/6/11.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "Tree.h"
#import "TreeNode.h"

@interface Tree ()

@end

@implementation Tree

- (void)addElement:(id)elem {
    TreeNode *node = [TreeNode treeNodeWithElement:elem];
    
    // 如果树是空的，添加到根节点
    if (self.node == nil) {
        self.node = node;
        return;
    }
    
    NSMutableArray *nodes = [NSMutableArray arrayWithObject:self.node];
    // 遍历已有节点
    while (nodes.count > 0) {
        TreeNode *cur_node = [nodes firstObject];
        [nodes removeObject:cur_node];
        
        if (cur_node.left_child == nil) {
            cur_node.left_child = node;
            return;
        } else {
            [nodes addObject:cur_node.left_child];
        }
        
        if (cur_node.right_child == nil) {
            cur_node.right_child = node;
            return;
        } else {
            [nodes addObject:cur_node.right_child];
        }
    }
}

/**
 *  广度遍历
 */
- (void)breadth_travel {
    if (self.node == nil) {
        return;
    }
    NSMutableArray *nodes = [NSMutableArray arrayWithObject:self.node];
    while (nodes.count > 0) {
        TreeNode *cur_node = [nodes firstObject];
        [nodes removeObject:cur_node];
        
        NSLog(@"%@",cur_node.element);
        
        if (cur_node.left_child != nil) {
            [nodes addObject:cur_node.left_child];
        }
        if (cur_node.right_child != nil) {
            [nodes addObject:cur_node.right_child];
        }
    }
}

/**
 *  先序遍历
 */
- (void)preorder:(TreeNode *)node {
    if (node == nil) {
        return;
    }

    NSLog(@"%@",node.element);
    [self preorder:node.left_child];
    [self preorder:node.right_child];
}
/**
 *  中序遍历
 */
- (void)inorder:(TreeNode *)node {
    if (node == nil) {
        return;
    }
    [self inorder:node.left_child];
    NSLog(@"%@",node.element);
    [self inorder:node.right_child];
}
/**
 *  后序遍历
 */
- (void)postorder:(TreeNode *)node {
    if (node == nil) {
        return;
    }
    
    [self postorder:node.left_child];
    [self postorder:node.right_child];
    NSLog(@"%@",node.element);
}


@end
