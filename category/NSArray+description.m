//
//  NSArray+description.m
//  test
//
//  Created by qianfeng on 15-7-30.
//  Copyright (c) 2015年 高创. All rights reserved.
//

#import "NSArray+description.h"

@implementation NSArray (description)

- (NSString *)description
{
    NSMutableString *mStr = [NSMutableString string];
    for (NSString *str in self) {
        [mStr appendString:str];
    }
    return mStr;
}

@end
