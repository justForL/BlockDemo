//
//  ViewController.m
//  BlockDemo
//
//  Created by 冷健 on 2018/4/10.
//  Copyright © 2018年 冷健. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self globalBlock];
    
}

/**
 全局block
 */
- (void)globalBlock {
    //定义一个block
    void (^testBlock)(void) = ^() {
        
    };
    /*
     打印testBlock
     2018-04-10 21:40:01.488588+0800 BlockDemo[22221:9676621] <__NSGlobalBlock__: 0x105d03088>
     */
    
    NSLog(@"%@",testBlock);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
