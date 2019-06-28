//
//  PkManager.m
//  CheCheng
//
//  Created by 张翼凌 on 16/3/18.
//  Copyright © 2016年 wswy. All rights reserved.
//

#import "PkManager.h"

#define PK_CAR @"pkcar"

@interface PkManager()

@property (nonatomic, strong) NSMutableArray *PkCars;
@property (nonatomic, strong) NSMutableArray<id<PkManagerProtocol>> *notifers;
@end


@implementation PkManager

-(NSMutableArray *)PkCars{
    
    if (!_PkCars) {
        _PkCars = [NSMutableArray array];
    }
    return _PkCars;
}


static PkManager *instance = nil;

+ (PkManager *) manager {
    if (!instance) {
        if (!instance) {
            instance = [[PkManager alloc] init];
        }
    }
    return instance;
}
-(id)init{
    self = [super init];
    if (self) {
        [self getUserDefault];
        self.notifers = [@[] mutableCopy];
    }
    return self;
}
//获取pk车数量
-(NSInteger)getCount{
    return self.PkCars.count;
}
//添加pk车辆，pk数量大于10返回NO
-(BOOL)addCars:(NSString *)carid{
    
    //判断是否已加入pk
    if ([self isAddPk:carid]) {
        return NO;
    }
    
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    if (self.PkCars.count <10) {
        [self.PkCars addObject:carid];
        [userDefault setValue:self.PkCars forKey:PK_CAR];
        [userDefault synchronize];
        //通知变更
        [self sendNotice];
        return YES;
    }else{
        //pk车辆大于10
        return NO;
    }
}
//判断是否已添加pk
-(BOOL)isAddPk:(NSString *)carid{
    for (NSString *carname in self.PkCars) {
        if ([carid isEqualToString:carname]) {
            return YES;
        }
    }
    return NO;
}
//删除pk车辆
-(void)reduceCars:(NSString *)carid{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    for (int i = 0; i < self.PkCars.count; i++) {
        if ([carid isEqualToString:self.PkCars[i]]) {
            [self.PkCars removeObjectAtIndex:i];
            [userDefault setValue:self.PkCars forKey:PK_CAR];
            [userDefault synchronize];
            //通知变更
            [self sendNotice];
            return;
        }
    }
}
//清空pk车辆
-(void)removeAllcars{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    [self.PkCars removeAllObjects];
    [userDefault setObject:self.PkCars forKey:PK_CAR];
    [userDefault synchronize];
    //通知变更
    [self sendNotice];
}
//获取pk车辆数组
-(NSMutableArray *)getPkCarsArray{
    return self.PkCars;
}

-(void)getUserDefault{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    NSMutableArray *tempArray = (NSMutableArray *)[userDefault objectForKey:PK_CAR];
    self.PkCars = [NSMutableArray arrayWithArray:tempArray];
}

#pragma mark - notifier

/**
 *  发送更改通知
 */
- (void) sendNotice
{
    for (id<PkManagerProtocol> notifer in _notifers) {
        [notifer pkDidChanged];
    }
}

- (void)registerNotifer:(id<PkManagerProtocol>)notifer
{
    [notifer pkDidChanged];
    if (![_notifers containsObject:notifer]) {
        [_notifers addObject:notifer];
    }
}
- (void)removeNotifer:(id)notifier
{
    [_notifers removeObject:notifier];
}

+ (void) registerNotifer:(id<PkManagerProtocol>)notifer{
    [[[self class] manager] registerNotifer:notifer];
}
+ (void) removeNotifer:(id)notifer{
    [[[self class] manager] removeNotifer:notifer];
}
@end











