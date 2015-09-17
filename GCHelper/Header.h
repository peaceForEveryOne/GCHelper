//
//  Header.h
//  UIControlDemo
//
//  Created by qianfeng on 15-8-3.
//  Copyright (c) 2015年 高创. All rights reserved.
//

#ifndef UIControlDemo_Header_h
#define UIControlDemo_Header_h

//默认行高和NavigationBar的高度
#define Default 44
//距离左边边距
#define LeftDistance 10
//控件间的距离
#define ControlDistance 20

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

#define Color arc4random() % 256
//美工和设计通过PS给出的色值是0~255，苹果的RGB参数给出的是0~1
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.f)
#define RandomColor RGB(Color,Color,Color)



//安全释放宏
#define Release_Safe(_control) [_control release],_control = nil;

#endif
