//
//  UIView+Add.h
//  UIViewDemo4
//
//  Created by qianfeng on 15-7-29.
//  Copyright (c) 2015年 高创. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Add)

- (CGFloat)width;//宽
- (CGFloat)height;//高
- (CGFloat)top;//上
- (CGFloat)bottom;//下
- (CGFloat)left;//左
- (CGFloat)right;//右



- (void)setWidth:(CGFloat)width;    //设置宽
- (void)setHeight:(CGFloat)height;  //设置高
- (void)setXOffset:(CGFloat)x;      //设置X
- (void)setYOffset:(CGFloat)y;      //设置Y


@end
