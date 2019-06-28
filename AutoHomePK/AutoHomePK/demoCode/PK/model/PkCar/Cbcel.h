//
//  Cbcel.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbcel : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *elecBeTor;
@property (nonatomic, strong) NSString *elecBatteryLife;
@property (nonatomic, strong) NSString *elecBePower;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *elecBatteryCap;
@property (nonatomic, strong) NSString *elecFrPower;
@property (nonatomic, strong) NSString *elecFrTor;
@property (nonatomic, strong) NSString *elecSumTor;
@property (nonatomic, strong) NSString *elecSumPower;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
