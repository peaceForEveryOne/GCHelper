//
//  NSMutableArray+move.m
//  ScrollHomework
//
//  Created by 愤怒的振振 on 15-4-27.
//  Copyright (c) 2015年 LiuWeiZhen. All rights reserved.
//

#import "NSMutableArray+move.h"

@implementation NSMutableArray (move)

- (void)moveLeft
{
    [self addObject:@""];
    [self exchangeObjectAtIndex:0 withObjectAtIndex:self.count-1];
    [self removeObjectAtIndex:0];
}

- (void)moveRight
{
    [self insertObject:@"" atIndex:0];
    [self exchangeObjectAtIndex:0 withObjectAtIndex:self.count-1];
    [self removeLastObject];
}

- (void)moveLeftStep:(NSInteger)step
{
    for (NSInteger i = 0; i < step; i++) {
        [self moveLeft];
    }
}

- (void)moveRightStep:(NSInteger)step
{
    for (NSInteger i = 0; i < step; i++) {
        [self moveRight];
    }
}

@end
