//
//  UIView+ScaleLine.m
//  CheCheng
//
//  Created by xiebo on 16/3/9.
//  Copyright © 2016年 wswy. All rights reserved.
//

#import "UIView+ScaleLine.h"
#import "PKDefine.h"

@implementation UIView (ScaleLine)

+ (UIView *) varLineView:(float)h x:(float)x y:(float)y
{
    return [UIView varLineView:h x:x y:y color:COLORLN];
}

+ (UIView *) horLineView:(float)w x:(float)x y:(float)y
{
    return [UIView horLineView:w x:x y:y color:COLORLN];
}

+ (UIView *) varLineView:(float)h x:(float)x y:(float)y color:(UIColor *)color
{
    UIView *v = [[UIView alloc] init];
    v.backgroundColor = color;
    v.frame = CGRectMake(x, y, 1.f/[UIScreen mainScreen].scale, h);
    return v;
}

+ (UIView *) horLineView:(float)w x:(float)x y:(float)y color:(UIColor *)color
{
    UIView *v = [[UIView alloc] init];
    v.backgroundColor = color;
    v.frame = CGRectMake(x, y, w, 1.f/[UIScreen mainScreen].scale);
    return v;
}

+ (CGFloat) scaleValue
{
    return 1.f / [UIScreen mainScreen].scale;
}

@end
