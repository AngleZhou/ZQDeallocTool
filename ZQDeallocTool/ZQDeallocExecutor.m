//
//  ZQDeallocExecutor.m
//  test
//
//  Created by ZhouQian on 16/7/26.
//  Copyright © 2016年 ZhouQian. All rights reserved.
//

#import "ZQDeallocExecutor.h"

@interface ZQDeallocExecutor () {
    executor _block;
}

@end
@implementation ZQDeallocExecutor

- (instancetype)initWithBlock:(executor)aBlock {
    self = [super init];
    if (self) {
        _block = [aBlock copy];
    }
    return self;
}

- (void)dealloc {
    _block ? _block() : nil;
}
@end
