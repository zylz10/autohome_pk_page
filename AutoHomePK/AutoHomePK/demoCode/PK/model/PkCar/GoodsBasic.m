//
//  GoodsBasic.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "GoodsBasic.h"


NSString *const kGoodsBasicGoodsName = @"goodsName";
NSString *const kGoodsBasicId = @"id";
NSString *const kGoodsBasicSaleCount = @"saleCount";
NSString *const kGoodsBasicGoodsBottomFormatContent = @"goods_bottom_format_content";
NSString *const kGoodsBasicGoodsTopFormatContent = @"goods_top_format_content";
NSString *const kGoodsBasicGoodsPirce = @"goodsPirce";


@interface GoodsBasic ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GoodsBasic

@synthesize goodsName = _goodsName;
@synthesize goodsBasicIdentifier = _goodsBasicIdentifier;
@synthesize saleCount = _saleCount;
@synthesize goodsBottomFormatContent = _goodsBottomFormatContent;
@synthesize goodsTopFormatContent = _goodsTopFormatContent;
@synthesize goodsPirce = _goodsPirce;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.goodsName = [self objectOrNilForKey:kGoodsBasicGoodsName fromDictionary:dict];
            self.goodsBasicIdentifier = [self objectOrNilForKey:kGoodsBasicId fromDictionary:dict];
            self.saleCount = [[self objectOrNilForKey:kGoodsBasicSaleCount fromDictionary:dict] doubleValue];
            self.goodsBottomFormatContent = [self objectOrNilForKey:kGoodsBasicGoodsBottomFormatContent fromDictionary:dict];
            self.goodsTopFormatContent = [self objectOrNilForKey:kGoodsBasicGoodsTopFormatContent fromDictionary:dict];
            self.goodsPirce = [[self objectOrNilForKey:kGoodsBasicGoodsPirce fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.goodsName forKey:kGoodsBasicGoodsName];
    [mutableDict setValue:self.goodsBasicIdentifier forKey:kGoodsBasicId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.saleCount] forKey:kGoodsBasicSaleCount];
    [mutableDict setValue:self.goodsBottomFormatContent forKey:kGoodsBasicGoodsBottomFormatContent];
    [mutableDict setValue:self.goodsTopFormatContent forKey:kGoodsBasicGoodsTopFormatContent];
    [mutableDict setValue:[NSNumber numberWithDouble:self.goodsPirce] forKey:kGoodsBasicGoodsPirce];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.goodsName = [aDecoder decodeObjectForKey:kGoodsBasicGoodsName];
    self.goodsBasicIdentifier = [aDecoder decodeObjectForKey:kGoodsBasicId];
    self.saleCount = [aDecoder decodeDoubleForKey:kGoodsBasicSaleCount];
    self.goodsBottomFormatContent = [aDecoder decodeObjectForKey:kGoodsBasicGoodsBottomFormatContent];
    self.goodsTopFormatContent = [aDecoder decodeObjectForKey:kGoodsBasicGoodsTopFormatContent];
    self.goodsPirce = [aDecoder decodeDoubleForKey:kGoodsBasicGoodsPirce];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_goodsName forKey:kGoodsBasicGoodsName];
    [aCoder encodeObject:_goodsBasicIdentifier forKey:kGoodsBasicId];
    [aCoder encodeDouble:_saleCount forKey:kGoodsBasicSaleCount];
    [aCoder encodeObject:_goodsBottomFormatContent forKey:kGoodsBasicGoodsBottomFormatContent];
    [aCoder encodeObject:_goodsTopFormatContent forKey:kGoodsBasicGoodsTopFormatContent];
    [aCoder encodeDouble:_goodsPirce forKey:kGoodsBasicGoodsPirce];
}

- (id)copyWithZone:(NSZone *)zone
{
    GoodsBasic *copy = [[GoodsBasic alloc] init];
    
    if (copy) {

        copy.goodsName = [self.goodsName copyWithZone:zone];
        copy.goodsBasicIdentifier = [self.goodsBasicIdentifier copyWithZone:zone];
        copy.saleCount = self.saleCount;
        copy.goodsBottomFormatContent = [self.goodsBottomFormatContent copyWithZone:zone];
        copy.goodsTopFormatContent = [self.goodsTopFormatContent copyWithZone:zone];
        copy.goodsPirce = self.goodsPirce;
    }
    
    return copy;
}


@end
