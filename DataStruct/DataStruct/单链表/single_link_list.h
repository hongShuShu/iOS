//
//  single_link_list.h
//  DataStruct
//
//  Created by xhwl on 2018/6/5.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

- (instancetype)initWithElement:(id)elem;

@end

@interface SingleLinkList : NSObject

- (instancetype)initWithNode:(Node *)node;
- (BOOL)is_empty;
- (NSInteger)length;
- (void)append:(Node *)node;

@end
