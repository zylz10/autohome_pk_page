//
//  GoodsBasic.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface GoodsBasic : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *goodsName;
@property (nonatomic, strong) NSString *goodsBasicIdentifier;
@property (nonatomic, assign) double saleCount;
@property (nonatomic, strong) NSString *goodsBottomFormatContent;
@property (nonatomic, strong) NSString *goodsTopFormatContent;
@property (nonatomic, assign) double goodsPirce;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
