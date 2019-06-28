//
//  PKHeadView.m
//  CheCheng
//
//  Created by 张翼凌 on 16/3/8.
//  Copyright © 2016年 wswy. All rights reserved.
//

#import "PKHeadView.h"
#import "PKheadModel.h"
#import "PKDefine.h"

#define GAP 10
#define HeadHeight self.frame.size.height
#define ViewWidth 130
#define ImageWidth 120
#define ImageHeight 55
#define LabWidth 120
#define LabHeight 36
#define AddBtnSize 80


@interface PKHeadView ()<UIScrollViewDelegate>

@property (nonatomic,strong)NSMutableArray *Views;
@property (nonatomic,strong)NSMutableArray *closeBtns;
@property (nonatomic,strong)NSMutableArray *datas;

@end


@implementation PKHeadView

-(id)initWithFrame:(CGRect)frame Count:(NSInteger)number Array:(NSMutableArray *)ary{
    self = [super initWithFrame:frame];
    if (self) {
        [self createView:number Array:ary];
    }
    return self;
}
-(void)createView:(NSInteger)number Array:(NSMutableArray *)ary{
    self.datas = [NSMutableArray array];
    self.datas = ary;
    
    UIScrollView *srco = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, KDeviceW, HeadHeight)];
    self.ScrollView = srco;
    self.ScrollView.contentSize = CGSizeMake(ViewWidth * number +GAP, 0);
    self.ScrollView.bounces = NO;
    self.ScrollView.showsHorizontalScrollIndicator = NO;
    self.ScrollView.delegate = self;
    [self addSubview:self.ScrollView];
    
    self.Views = [NSMutableArray array];
    self.closeBtns = [NSMutableArray array];
    
    for (int i = 0; i<=number; i++) {
        
        UIView *hview = [[UIView alloc]initWithFrame:CGRectMake(i*ViewWidth, 0, ViewWidth, HeadHeight)];
        hview.tag = i+1000;
        if (i == 0) {
            [hview setBackgroundColor:color(98, 140, 247, 0.5)];
        }
        //添加按钮
        if (i == number) {
            UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(GAP, GAP, AddBtnSize, AddBtnSize)];
            self.addbtn = btn;
            [hview addSubview:btn];
            [self.ScrollView addSubview:hview];
            [self.Views addObject:hview];
            
            UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(GAP, ImageHeight+GAP, 80, 20)];
            lab.font = [UIFont systemFontOfSize:12];
            lab.numberOfLines = 0;
//            lab.text = @"添加车辆";
            lab.textAlignment = NSTextAlignmentCenter;
            lab.textColor = KColor(177, 178, 179);
            [hview addSubview:lab];
            
            continue;
        }
        
        PKheadModel *model =(PKheadModel *)ary[i];
//        NSURL *imageurl =[NSURL URLWithString:model.image];
        UIImageView *imageview = [[UIImageView alloc]initWithFrame:CGRectMake(GAP, GAP+10,ImageWidth, ImageHeight)];
        imageview.image = [UIImage imageNamed:model.image];
//        [imageview sd_setImageWithURL:imageurl placeholderImage:[UIImage imageNamed:@"img_default53"]];
        [hview addSubview:imageview];
        
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(GAP, ImageHeight+GAP+10, LabWidth, LabHeight)];
        lab.font = [UIFont systemFontOfSize:12];
        lab.numberOfLines = 0;
        lab.textColor = color(57, 57, 57, 1);
        lab.textAlignment = NSTextAlignmentCenter;
        lab.text = model.carname;
        [hview addSubview:lab];
        
        UILabel *priceLab = [[UILabel alloc]initWithFrame:CGRectMake(GAP, lab.bottom, LabWidth, 12)];
        priceLab.font = [UIFont systemFontOfSize:12];
        priceLab.textColor = color(57, 57, 57, 1);
        priceLab.textAlignment = NSTextAlignmentCenter;
        priceLab.text = model.price;
        [hview addSubview:priceLab];

        [self.ScrollView addSubview:hview];
        [self.Views addObject:hview];
    }
    //添加关闭按钮
    for (int i = 0; i<number; i++) {
        UIButton *closebtn = [[UIButton alloc]initWithFrame:CGRectMake(ViewWidth*i + ViewWidth - GAP - 4, 4, 24, 24)];
        [closebtn setBackgroundImage:[UIImage imageNamed:@"icon_delete3"] forState:UIControlStateNormal];
        [closebtn addTarget:self action:@selector(closeView:) forControlEvents:UIControlEventTouchUpInside];
        closebtn.layer.cornerRadius = closebtn.frame.size.height/2;
        closebtn.tag = 1000+i;
        [self.closeBtns addObject:closebtn];
        [self.ScrollView addSubview:closebtn];
    }

}


-(void)closeView:(UIButton *)btn{
    if (self.datas.count > 0) {
        [self.datas removeLastObject];
    }
    
    if (self.Views.count > 0 && self.closeBtns.count > 0) {
        [self.closeBtns removeObjectAtIndex:btn.tag - 1000];
        [btn removeFromSuperview];
        for (int i=0; i<self.closeBtns.count; i++) {
            UIButton *btn = (UIButton *)self.closeBtns[i];
            [btn setFrame:CGRectMake(ViewWidth*i + ViewWidth - GAP -4, 4, 24, 24)];
            btn.tag = 1000 +i;
        }
        
        UIView *view = (UIView *)self.Views[btn.tag - 1000];
        [view removeFromSuperview];
        [self.Views removeObjectAtIndex:btn.tag - 1000];
        for (int i = 0; i < self.Views.count; i++) {
            UIView *vie = (UIView *)self.Views[i];
            [vie setFrame:CGRectMake(i*ViewWidth , 0, ViewWidth, HeadHeight)];
        }
        self.ScrollView.contentSize = CGSizeMake(ViewWidth * self.datas.count + self.datas.count * 2, 0);
        if (self.delegate) {
            [self.delegate close:btn.tag - 1000];
        }
    }
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (self.delegate) {
        CGFloat offsetX= scrollView.contentOffset.x;
        CGPoint offset=scrollView.contentOffset;
        offset.x=offsetX;
        [self.delegate roll:offset];
    }}


@end
