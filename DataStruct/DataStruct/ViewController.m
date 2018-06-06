//
//  ViewController.m
//  DataStruct
//
//  Created by xhwl on 2018/6/5.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "ViewController.h"
#import "single_link_list.h"
#import "single_cycle_link_list.h"
#import "double_link_list.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self test_single_link_list];
//    [self test_single_cycle_link_list];
    
    [self test_double_link_list];
}

#pragma mark --------------------------------------------------------
#pragma mark - 单链表
#pragma mark --------------------------------------------------------
//  单向循环链表测试
- (void)test_single_cycle_link_list {
    SingleCycleLinkList *list = [[SingleCycleLinkList alloc] init];
    
    [list append:@"1"];
    [list append:@"3"];
    [list insertAtIndex:1 element:@"2"];
    [list add:@"0"];
    
//    [list remove:@"1"];
    BOOL result = [list findElement:@"2"];
    if (result) {
        NSLog(@"链表里存在元素");
    } else {
        NSLog(@"链表里不存在元素");
    }
    
    NSLog(@"%d",list.is_empty);
    NSLog(@"%ld",list.length);
    
    [list travel];
}

//  单链表测试
- (void)test_single_link_list {
    SingleLinkList *list = [[SingleLinkList alloc] init];
    
    //    NSLog(@"%d",list.is_empty);
    [list append:@"1"];
    [list append:@"3"];
    [list insertAtIndex:1 element:@"2"];
    [list add:@"0"];
    
    [list remove:@"1"];
    BOOL result = [list findElement:@"2"];
    if (result) {
        NSLog(@"链表里存在元素");
    } else {
        NSLog(@"链表里不存在元素");
    }
    
    //    NSLog(@"%d",list.is_empty);
    //    NSLog(@"%ld",list.length);
    
    [list travel];
}

#pragma mark --------------------------------------------------------
#pragma mark - 双链表
#pragma mark --------------------------------------------------------
// 双链表测试
- (void)test_double_link_list {
    DoubleLinkList *list = [[DoubleLinkList alloc] init];
    
    //    NSLog(@"%d",list.is_empty);
    [list append:@"1"];
    [list append:@"3"];
    [list insertAtIndex:1 element:@"2"];
    [list add:@"0"];
    
    [list remove:@"1"];
    BOOL result = [list findElement:@"2"];
    if (result) {
        NSLog(@"链表里存在元素");
    } else {
        NSLog(@"链表里不存在元素");
    }
    
    //    NSLog(@"%d",list.is_empty);
    //    NSLog(@"%ld",list.length);
    
    [list travel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
