//
//  PkSectionView.m
//  doubleTableView
//
//  Created by 张翼凌 on 16/3/1.
//  Copyright © 2016年 z10. All rights reserved.
//

#import "PkSectionView.h"
#import "PKDefine.h"

#define GAP 0.5


@implementation PkSectionView

-(instancetype)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    if (self) {
    
        
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, 175, self.frame.size.height)];
        self.lab = lab;
        lab.textAlignment = NSTextAlignmentLeft;
        lab.font = [UIFont systemFontOfSize:14];
        lab.textColor = color(57, 57, 57, 1);
        lab.numberOfLines = 0;
        [self addSubview:lab];
        
        //标配
        UILabel *bconig = [[UILabel alloc]initWithFrame:CGRectMake(KDeviceW - 210, 0, 200, self.frame.size.height)];
        bconig.textAlignment = NSTextAlignmentRight;
        bconig.font = [UIFont systemFontOfSize:14];
        bconig.text = @"注：●标配 ○选配 -无";
        bconig.textColor = color(57, 57, 57, 1);
        [self addSubview:bconig];
    
    }
    return self;
}

@end
