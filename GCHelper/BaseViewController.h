//
//  BaseViewController.h
//  UIViewControllerDemo2
//
//  Created by qianfeng on 15-7-30.
//  Copyright (c) 2015年 高创. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Factory.h"
#import "UIView+Add.h"
#import "Header.h"


@interface BaseViewController : UIViewController

//创建视图
- (void)creatView;
//初始化数据源
- (void)initData;
//添加事件
- (void)addTouchAction;

//自定义Navigation左上角按钮
- (void)creatNavigationLeftButton:(id)view;

//定义Navigation左上角按钮
- (void)creatNavigationLeftButtonWithtitle:(NSString *)title target:(id)target action:(SEL)action;

//自定义Navigation右上角按钮
- (void)creatNavigationRightButton:(id)view;

//定义Navigation右上角按钮
- (void)creatNavigationRightButtonWithtitle:(NSString *)title target:(id)target action:(SEL)action;

//使用POP返回
- (void)backAction;

//键盘弹出
- (void)keyboardShow:(NSNotification *)notification;

//键盘隐藏
- (void)keyboardHide:(NSNotification *)notification;


@end
