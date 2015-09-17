//
//  BaseViewController.m
//  UIViewControllerDemo2
//
//  Created by qianfeng on 15-7-30.
//  Copyright (c) 2015年 高创. All rights reserved.
//

#import "BaseViewController.h"


@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RandomColor;
    
    [self creatView];
    [self initData];
    [self addTouchAction];
    
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    //注册键盘将要弹出的提醒
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardShow:) name:UIKeyboardWillShowNotification object:nil];

    //注册键盘将要消失的提醒
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardHide:) name:UIKeyboardWillHideNotification object:nil];
}
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    //移除注册的键盘将要显示的通知
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    
    //移除注册的键盘将要隐藏的通知
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
    
}

//创建视图
- (void)creatView
{
    //不做实现，只是为了使用方便
}
//初始化数据源
- (void)initData
{
    //不做实现，只是为了使用方便
}
//添加事件
- (void)addTouchAction
{
    //不做实现，只是为了使用方便
}

//键盘弹出
- (void)keyboardShow:(NSNotification *)notification {
    //不做实现，只是为了方便
}

//键盘隐藏
- (void)keyboardHide:(NSNotification *)notification {
    //不做实现，只是为了方便
}


- (void)creatNavigationLeftButton:(id)view
{
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:view];
    self.navigationItem.leftBarButtonItem = leftItem;
    [leftItem release];
}

- (void)backAction
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)creatNavigationLeftButtonWithtitle:(NSString *)title target:(id)target action:(SEL)action
{
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:target action:action];
    self.navigationItem.leftBarButtonItem = leftItem;
    [leftItem release];
}

- (void)creatNavigationRightButton:(id)view
{
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:view];
    self.navigationItem.rightBarButtonItem = rightItem;
    [rightItem release];
}

- (void)creatNavigationRightButtonWithtitle:(NSString *)title target:(id)target action:(SEL)action
{
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:target action:action];
    self.navigationItem.rightBarButtonItem = rightItem;
    [rightItem release];
}







@end
