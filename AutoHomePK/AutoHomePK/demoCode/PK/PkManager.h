//
//  PkManager.h
//  CheCheng
//  PK管理器
//  Created by 张翼凌 on 16/3/18.
//  Copyright © 2016年 wswy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PkManagerProtocol <NSObject>

@required
- (void) pkDidChanged;

@end

@interface PkManager : NSObject

+ (PkManager *) manager;


//获取pk车数量
-(NSInteger)getCount;
//添加pk车辆，pk数量大于10返回NO
-(BOOL)addCars:(NSString *)carid;
//判断是否已添加pk 已添加返回
-(BOOL)isAddPk:(NSString *)carid;
//删除pk车辆
-(void)reduceCars:(NSString *)carid;
//清空pk车辆
-(void)removeAllcars;
//获取pk数组
-(NSMutableArray *)getPkCarsArray;
/**
 *  回调通知
 */

+ (void) registerNotifer:(id<PkManagerProtocol>)notifer;
+ (void) removeNotifer:(id)notifer;

@end
