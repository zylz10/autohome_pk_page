//
//  PKCell.m
//  CheCheng
//
//  Created by 张翼凌 on 16/3/8.
//  Copyright © 2016年 wswy. All rights reserved.
//

#import "PKCell.h"
#import "UIView+ScaleLine.h"
#import "PKDefine.h"

#define GAP 1
#define LabelWidth 132
#define HeadHeight 30
#define Edg 10
#define AddBtnSize 80
#define maxCount 12

@interface PKCell ()<UIScrollViewDelegate>

@property (nonatomic,strong)NSMutableArray *Labels;
@property (nonatomic,strong)NSMutableArray *quiryBtns;
@property (nonatomic,weak)UILabel *titlelab;
@property (nonatomic,strong)UIView *line;
@property (nonatomic,weak)UIView *shadowView;
@end

@implementation PKCell


-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createView];
    }
    return self;
}
-(void)createView{

    self.Labels = [NSMutableArray array];
    self.quiryBtns = [NSMutableArray array];
    [self setBackgroundColor:KColor(236, 237, 238)];
    
    //头部View
    UIView *headview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, KDeviceW, HeadHeight)];
    [headview setBackgroundColor:KColor(236, 237, 238)];
    [self.contentView addSubview:headview];
    //头部title
    UILabel *title = [[UILabel alloc]initWithFrame:CGRectMake(Edg, 0, self.contentView.width - 2*Edg, 30)];
    self.titlelab = title;
    title.textAlignment = NSTextAlignmentLeft;
    title.font = [UIFont systemFontOfSize:14];
    [headview addSubview:title];
    
    //ScrollView
    self.ScrollView = [[UIScrollView alloc] init];
    self.ScrollView.bounces = NO;
    self.ScrollView.showsHorizontalScrollIndicator = NO;
    self.ScrollView.delegate = self;
    self.ScrollView.contentSize = CGSizeMake(LabelWidth*10 + AddBtnSize + GAP, 0);
    [self.contentView addSubview:self.ScrollView];
    
    for (int i = 0; i < maxCount; i++) {
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(LabelWidth*i, 0, LabelWidth, 100 - HeadHeight)];
        [view setBackgroundColor:[UIColor whiteColor]];
        [self.ScrollView addSubview:view];
        
        if (i==0) {
            UIView *shadowView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, LabelWidth, 0)];
            self.shadowView = shadowView;
            shadowView.backgroundColor = color(98, 140, 247, 0.5);
            [view addSubview:shadowView];
        }
        
        UIView *lineh =[UIView varLineView:100 x:LabelWidth-1 y:0];
        [view addSubview:lineh];
        
        UILabel *label = [[UILabel alloc]init];
        label.tag = i;
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:14];
//        if (i == 0) {
//            [label setBackgroundColor:color(98, 140, 247, 0.5)];
//        }else{
//            [label setBackgroundColor:[UIColor whiteColor]];
//        }
        label.numberOfLines = 0;
        label.textColor = color(122, 122, 122, 1);
        [self.Labels addObject:label];
        [view addSubview:label];
        
        UIButton *quiryBtn = [[UIButton alloc]init];
        [quiryBtn setBackgroundColor:color(255, 162, 41,1)];
        [quiryBtn addTarget:self action:@selector(inquiry:) forControlEvents:UIControlEventTouchUpInside];
        quiryBtn.tag = 30000+i;
        quiryBtn.hidden  = YES;
        [quiryBtn setTitle:@"咨询" forState:UIControlStateNormal];
        [quiryBtn.titleLabel setFont:[UIFont systemFontOfSize:14]];
        [self.quiryBtns addObject:quiryBtn];
        [view addSubview:quiryBtn];
    }
    
    UIView *line = [UIView horLineView:KDeviceW x:0 y:self.contentView.frame.size.height];
    self.line = line;
    [self.contentView addSubview:line];
}
-(void)inquiry:(UIButton *)btn{
    if (self.delegate) {
        [self.delegate quiry:btn];
    }
}
-(void)layoutSubviews{
    [super layoutSubviews];
    
    CGRect sf = self.shadowView.frame;
    sf.size.height = self.contentView.height;
    self.shadowView.frame = sf;
    
    self.line.origin = CGPointMake(0, self.contentView.frame.size.height);
    self.titlelab.text = self.title;
    self.ScrollView.frame = CGRectMake(0, HeadHeight, KDeviceW, self.frame.size.height - 30);
    self.ScrollView.contentSize = CGSizeMake(LabelWidth*self.datas.count, 0);
    //隐藏询价
    for (UIButton *btn in self.quiryBtns) {
        btn.hidden = YES;
        btn.frame = CGRectZero;
    }

    for (UILabel *lab in self.Labels) {
        lab.text = @"";
        lab.frame = CGRectMake(10, 0, LabelWidth - 21, self.frame.size.height - 30);

    }
    for (int i = 0; i<self.datas.count; i++) {
        UILabel *lab = (UILabel *)self.Labels[i];
        if ([self.datas[i] length] == 1) {
            lab.text = [NSString stringWithFormat:@"　%@　", self.datas[i]];
        } else {
            lab.text = self.datas[i];
        }
    }
    
    if ([self.title isEqualToString:@"车价"]) {
        for (int i = 0; i<self.datas.count; i++) {
            UILabel *lab = (UILabel *)self.Labels[i];
            lab.frame = CGRectMake(10, 0, LabelWidth - 21, 32);
            UIButton *btn = self.quiryBtns[i];
            btn.hidden = NO;
            btn.frame = CGRectMake(0, 32, 60, 27);
            btn.centerX = 66;
            btn.layer.cornerRadius = btn.frame.size.height/2;
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
    }
}

//- (void)awakeFromNib {
//    // Initialization code
//}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
