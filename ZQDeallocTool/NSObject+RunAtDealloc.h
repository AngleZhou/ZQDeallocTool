//
//  NSObject+RunAtDealloc.h
//  test
//
//  Created by ZhouQian on 16/7/26.
//  Copyright © 2016年 ZhouQian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZQDeallocExecutor.h"


@interface NSObject (RunAtDealloc)
- (void)zq_runAtDealloc:(executor)block;
@end
