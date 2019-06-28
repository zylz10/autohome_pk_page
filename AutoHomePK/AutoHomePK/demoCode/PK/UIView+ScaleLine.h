//
//  UIView+ScaleLine.h
//  CheCheng
//  用来作为分割线的View
//  Created by xiebo on 16/3/9.
//  Copyright © 2016年 wswy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ScaleLine)

+ (UIView *) varLineView:(float)h x:(float)x y:(float)y;
+ (UIView *) horLineView:(float)w x:(float)x y:(float)y;

+ (UIView *) varLineView:(float)h x:(float)x y:(float)y color:(UIColor *)color;
+ (UIView *) horLineView:(float)w x:(float)x y:(float)y color:(UIColor *)color;

+ (CGFloat) scaleValue;

@end
