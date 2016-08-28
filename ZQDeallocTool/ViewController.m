//
//  ViewController.m
//  ZQDeallocTool
//
//  Created by ZhouQian on 16/8/26.
//  Copyright © 2016年 ZhouQian. All rights reserved.
//

#import "ViewController.h"
#import "CTCTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIViewController *obj = [[UIViewController alloc] init];
//    [obj deallocLog];
    CTCTest *test = [[CTCTest alloc] init];
}



@end
