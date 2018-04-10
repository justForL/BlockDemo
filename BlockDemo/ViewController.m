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

//    [self globalBlock];
//    [self mallocBlock];
    [self stackBlock];
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
/**
 堆block
 */
- (void)mallocBlock {
    int a = 10;
    void (^testBlock)(void) = ^() {
        NSLog(@"%zd",a);
    };
    /*
     打印testBlock
     2018-04-10 22:27:17.678131+0800 BlockDemo[28791:9757839] <__NSMallocBlock__: 0x60800045e150>
     */
    NSLog(@"%@",testBlock);
    
}

/**
 栈block
 */
- (void)stackBlock {
    int a = 10;
    /*
     打印testBlock
     2018-04-10 22:56:27.153377+0800 BlockDemo[29037:9793115] <__NSStackBlock__: 0x7fff586fabc8>
     */
    NSLog(@"%@",^{
        NSLog(@"%zd",a);
    });
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
