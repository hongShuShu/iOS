//
//  ViewController.m
//  runtime
//
//  Created by xhwl on 2018/7/24.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//  参考博客：https://www.jianshu.com/p/f831f48dbc62

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@property (nonatomic, strong) Person *person;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self dynamicAddMethod];
    [self singnature];
}

#pragma mark - dynamicAddMethod
- (void)dynamicAddMethod {
    Person *p = [[Person alloc]init];
    self.person = p;
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
    [p performSelector:@selector(dynamicSelector) withObject:nil];
    //    [self performSelector:@selector(dynamicSelector) withObject:nil];
#pragma clang diagnostic pop
}
// 备援接受者
// 第二步
//- (id)forwardingTargetForSelector:(SEL)aSelector {
//    if (aSelector==@selector(dynamicSelector)&&[self.person respondsToSelector:@selector(dynamicSelector)]) {
//        return self.person;
//    } else {
//        return [super forwardingTargetForSelector:aSelector];
//    }
//}

// 第三步
- (void)forwardInvocation:(NSInvocation *)anInvocation {
    if ([self.person respondsToSelector:[anInvocation selector]]) {
        [anInvocation invokeWithTarget:self.person];
    } else {
        [super forwardInvocation:anInvocation];
    }
}
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSMethodSignature *signature = [super methodSignatureForSelector:aSelector];
    if (signature == nil) {
        signature = [self.person methodSignatureForSelector:aSelector];
    }
    return signature;
}


#pragma mark - NSMethodSignature
- (void)singnature {
    NSMethodSignature *signature = [ViewController instanceMethodSignatureForSelector:@selector(run:age:)];
    if (signature == nil) {
        // 说明Person没有run这个方法，抛出异常
        [NSException raise:@"异常" format:@"方法找不到" arguments:nil];
    }
    
    NSInvocation *invocation =  [NSInvocation invocationWithMethodSignature:signature];
    // 设置方法调用者
    invocation.target = self;
    //注意：这里的方法名一定要与方法签名类中的方法一致
    invocation.selector = @selector(run:age:);
    
    // 参数
    NSString *name = @"jack";
    NSString *age = @"20";
    
    // 参数数组
    NSMutableArray *pars =  [NSMutableArray arrayWithCapacity:2];
    [pars addObject:name];
    [pars addObject:age];
    
    NSUInteger argsCount = signature.numberOfArguments - 2;
    NSUInteger arrCount = pars.count;
    
    NSUInteger count = MIN(argsCount, arrCount);
    NSLog(@"argsCount: %zd,arrCount: %zd,count: %zd",argsCount,arrCount,count);
    
    for (int i = 0; i<count; i++) {
        id arg = pars[i];
        if ([arg isKindOfClass:[NSNull class]]) {
            arg = nil;
        }
        // index要从2开始，0跟1已经被self（target）selector(_cmd)占了
        // 所以即使方法的参数为空的时候,此处也应该加2
        [invocation setArgument:&arg atIndex: i + 2 ];
    }
    
     [invocation invoke];
    
    // 此处可以获得参数的返回值
    id res = nil;
    if (signature.methodReturnLength != 0) {
        [invocation getReturnValue:&res];
    }
    NSLog(@"return : %@",res);
}
- (NSString *)run:(NSString *)name age:(NSString *)age {
    NSLog(@"%@-%@ %s",name,age,__func__);
    NSString *str = [NSString stringWithFormat:@"%@:%@",name,age];
    return str;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
