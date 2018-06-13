//
//  Tree.h
//  DataStruct
//
//  Created by xhwl on 2018/6/11.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

@interface Tree : NSObject

@property (nonatomic, strong) TreeNode *node;

- (void)addElement:(id)elem;

/**
 *  广度遍历
 */
- (void)breadth_travel;
/**
 *  先序遍历
 */
- (void)preorder:(TreeNode *) node;
/**
 *  中序遍历
 */
- (void)inorder:(TreeNode *)node;
/**
 *  后序遍历
 */
- (void)postorder:(TreeNode *)node;

@end
