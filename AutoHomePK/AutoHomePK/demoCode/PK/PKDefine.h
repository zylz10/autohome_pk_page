//
//  PKDefine.h
//  PKDemo
//
//  Created by zyl on 2019/4/18.
//  Copyright © 2019 zyl. All rights reserved.
//

#import "UIViewAdditions.h"

#define KDeviceH  [UIScreen mainScreen].bounds.size.height
#define KDeviceW  [UIScreen mainScreen].bounds.size.width
#define color(r,g,b,a) [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:a]
#define KColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define RGBACOLOR(r, g, b, a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:a/255.0f]
#define VCOLOR(v) RGBACOLOR(v, v, v, 255)
#define COLORLN VCOLOR(223) // 分割线
#define kSCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height
#define kSCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
