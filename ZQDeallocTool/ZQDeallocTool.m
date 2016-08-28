//
//  ZQDeallocTool.m
//  ZQDeallocTool
//
//  Created by ZhouQian on 16/8/28.
//  Copyright © 2016年 ZhouQian. All rights reserved.
//

#import "ZQDeallocTool.h"
#import "objc/runtime.h"
#import "Aspects.h"

static NSString *whiteList = @"CTC";

@implementation ZQDeallocTool

+ (void)addDeallocLog {
        NSArray *arrWhilteList = [whiteList componentsSeparatedByString:@","];
        
        
        Class *classes = NULL;
        int numClasses = objc_getClassList(NULL, 0);
        classes = (__unsafe_unretained Class *)malloc(sizeof(Class) * numClasses);

        numClasses = objc_getClassList(classes, numClasses);
        for (NSInteger classIndex = 0; classIndex < numClasses; ++classIndex) {
            Class class = classes[classIndex];
            
            NSString *className = NSStringFromClass(class);
            for (NSString *prefix in arrWhilteList) {                
                if ([[className substringToIndex:3] isEqualToString:prefix]) {
                    //do swizzling
                    [class aspect_hookSelector:NSSelectorFromString(@"dealloc") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
                        NSLog(@"%@ dealloc!!!", className);
                    } error:NULL];
                }
            }
            
            
            
        }
}
@end
