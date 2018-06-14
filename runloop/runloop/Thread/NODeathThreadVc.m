//
//  NODeathThreadVc.m
//  runloop
//
//  Created by xhwl on 2018/6/14.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//  不死线程

#import "NODeathThreadVc.h"
#import "HSSThread.h"

@interface NODeathThreadVc ()

@property (nonatomic, strong) HSSThread *thread;

@end

@implementation NODeathThreadVc


- (void)viewDidLoad {
    [super viewDidLoad];
    
    HSSThread *thread = [[HSSThread alloc] initWithTarget:self selector:@selector(run) object:nil];
    self.thread = thread;
    [thread start];
}

- (void)run {
    NSLog(@"run run run - %@",[NSThread currentThread]);
    [[NSRunLoop currentRunLoop] addPort:[NSPort port] forMode:NSDefaultRunLoopMode];
    [[NSRunLoop currentRunLoop] run];
    NSLog(@"走不到这里了");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self performSelector:@selector(test) onThread:self.thread withObject:nil waitUntilDone:YES];
}

- (void)test {
    NSLog(@"test test test - %@",[NSThread currentThread]);
}



@end
