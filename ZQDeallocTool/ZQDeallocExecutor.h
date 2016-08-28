//
//  ZQDeallocExecutor.h
//  test
//
//  Created by ZhouQian on 16/7/26.
//  Copyright © 2016年 ZhouQian. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^executor)(void);


@interface ZQDeallocExecutor : NSObject
- (instancetype)initWithBlock:(executor)block;
@end
