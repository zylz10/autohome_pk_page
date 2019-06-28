//
//  PKHeadView.h
//  CheCheng
//
//  Created by 张翼凌 on 16/3/8.
//  Copyright © 2016年 wswy. All rights reserved.
//

#import <UIKit/UIKit.h>




@protocol headviewDelegate <NSObject>
@optional
-(void)close:(NSInteger)index;
-(void)roll:(CGPoint)src;

@end

@interface PKHeadView : UIView

@property (nonatomic,weak)UIButton *addbtn;
@property (nonatomic,weak)UIScrollView *ScrollView;
@property (assign, nonatomic) id <headviewDelegate>delegate;


-(id)initWithFrame:(CGRect)frame Count:(NSInteger)number Array:(NSArray *)ary;

@end
