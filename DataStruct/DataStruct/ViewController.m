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

#import "SortObject.h"
#import "BubbleSort.h"
#import "SelectSort.h"
#import "InsertSort.h"
#import "HillSort.h"
#import "QuickSort.h"
#import "MergeSort.h"
#import "BinarySort.h"

#import "Tree.h"

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
//    [self insertSort];
//    [self hillSort];
//    [self quickSort];
//    [self mergeSort];
    
//    [self binarySearch];
    
    [self binary_tree];
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
    NSArray *array = [BubbleSort asc_sort:[SortObject testArray]];
    [SortObject printArray:array];
}
// 选择排序
- (void)selectSort {
    NSArray *array = [SelectSort sort:[SortObject testArray]];
    [SortObject printArray:array];
}
// 插入排序
- (void)insertSort {
    NSArray *array = [InsertSort sort:[SortObject testArray]];
    [SortObject printArray:array];
}
// 希尔排序
- (void)hillSort {
    NSArray *array = [HillSort sort:[SortObject testArray]];
    [SortObject printArray:array];
}
// 快速排序
- (void)quickSort {
    NSArray *array = [QuickSort sort:[SortObject testArray]];
    [SortObject printArray:array];
}
// 归并排序
- (void)mergeSort {
    NSArray *array = [MergeSort sort:[SortObject testArray]];
    [SortObject printArray:array];
}
// 二分查找
- (void)binarySearch {
    NSArray *array = [MergeSort sort:[SortObject testArray]];
    BOOL result = [BinarySort digui_search:array item:@12];
    if (result) {
        NSLog(@"找到了");
    } else {
        NSLog(@"没有找到");
    }
    
    for (NSNumber *num in array) {
        BOOL result = [BinarySort normal_search:array item:num];
        if (result) {
            NSLog(@"找到了");
        } else {
            NSLog(@"没有找到");
        }
    }
}
- (void)binary_tree {
    Tree *tree = [[Tree alloc] init];
    [tree addElement:@"0"];
    [tree addElement:@"1"];
    [tree addElement:@"2"];
    [tree addElement:@"3"];
    [tree addElement:@"4"];
    [tree addElement:@"5"];
    
//    [tree breadth_travel];
//    [tree preorder:tree.node];
//    [tree inorder:tree.node];
    [tree postorder:tree.node];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
