//
//  NSMutableArray+move.h
//  ScrollHomework
//
//  Created by 愤怒的振振 on 15-4-27.
//  Copyright (c) 2015年 LiuWeiZhen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (move)

- (void)moveLeft;
- (void)moveRight;
- (void)moveLeftStep:(NSInteger)step;
- (void)moveRightStep:(NSInteger)step;

@end
