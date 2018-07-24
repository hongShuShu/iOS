//
//  Person.m
//  runtime
//
//  Created by xhwl on 2018/7/24.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>

@implementation Person

//- (void)dynamicSelector {
//    NSLog(@"%s",__func__);
//}

// 没有实现的方法通过消息转发调用此方法
void holdMethod(id self,SEL _cmd) {
    NSLog(@"动态添加 %s 方法了",__func__);
}
// 第一步
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if (sel == @selector(dynamicSelector)) {
        class_addMethod([self class], sel, (IMP)holdMethod, "v@:");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}



@end
