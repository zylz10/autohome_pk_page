//
//  PKTool.h
//  doubleTableView
//
//  Created by z1013 on 15/10/14.
//  Copyright (c) 2015年 z10. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PKCarModel.h"




@interface PKTool : NSObject

+ (NSArray *)configAry;
+(void)LoadCarData;
+(NSString *)getStr:(PKCarModel *)car Index:(NSInteger)row section:(NSInteger)section;
@end
