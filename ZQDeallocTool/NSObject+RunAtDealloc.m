//
//  NSObject+RunAtDealloc.m
//  test
//
//  Created by ZhouQian on 16/7/26.
//  Copyright © 2016年 ZhouQian. All rights reserved.
//

#import "NSObject+RunAtDealloc.h"

#import <objc/runtime.h>

const void* RunAtDeallocKey = &RunAtDeallocKey;
@implementation NSObject (RunAtDealloc)

- (void)zq_runAtDealloc:(executor)block {
    if (block) {
        ZQDeallocExecutor *executor = [[ZQDeallocExecutor alloc] initWithBlock:block];
        objc_setAssociatedObject(self, RunAtDeallocKey, executor, OBJC_ASSOCIATION_RETAIN);
    }
}
@end
