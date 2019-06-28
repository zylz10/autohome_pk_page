//
//  PKCell.h
//  CheCheng
//
//  Created by 张翼凌 on 16/3/8.
//  Copyright © 2016年 wswy. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PKdelegate <NSObject>

@optional
-(void)roll:(CGPoint)src;
-(void)quiry:(UIButton *)btn;
@end

@interface PKCell : UITableViewCell

@property (assign, nonatomic) id <PKdelegate>delegate;

@property(nonatomic,strong)NSString *title;
@property (nonatomic,strong)UIScrollView *ScrollView;
@property (nonatomic,strong)NSArray *datas;

@end
