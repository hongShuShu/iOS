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

#import "BubbleSort.h"
#import "SelectSort.h"
#import "InsertSort.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self test_single_link_list];
//    [self test_single_cycle_link_list];
//    [self test_double_link_list];
    
//    [self bubblesort];
//    [self selectSort];
    
    [self insertSort];
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

#pragma mark - 排序
// 冒泡排序
- (void)bubblesort {
    NSArray *array = [BubbleSort asc_sort:@[@5,@2,@1,@4,@3,@0]];
    for (NSNumber *number in array) {
        NSLog(@"number:%@",number);
    }
}
// 选择排序
- (void)selectSort {
    NSArray *array = [SelectSort sort:@[@5,@2,@1,@4,@3,@0]];
    for (NSNumber *number in array) {
        NSLog(@"number:%@",number);
    }
}
// 插入排序
- (void)insertSort {
    NSArray *array = [InsertSort sort:@[@5,@2,@1,@4,@3,@0]];
    for (NSNumber *number in array) {
        NSLog(@"number:%@",number);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
