//
//  ViewController.m
//  DataStruct
//
//  Created by xhwl on 2018/6/5.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#import "ViewController.h"
#import "single_link_list.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    Node *node = [[Node alloc] initWithElement:@"123"];
    
    SingleLinkList *list = [[SingleLinkList alloc] init];
    
    NSLog(@"%d",list.is_empty);
    [list append:node];
    NSLog(@"%d",list.is_empty);
    NSLog(@"%ld",list.length);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
