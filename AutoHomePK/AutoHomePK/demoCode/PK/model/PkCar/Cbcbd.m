//
//  Cbcbd.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbcbd.h"


NSString *const kCbcbdZbzl = @"zbzl";
NSString *const kCbcbdCsjg = @"csjg";
NSString *const kCbcbdZj = @"zj";
NSString *const kCbcbdQlj = @"qlj";
NSString *const kCbcbdZws = @"zws";
NSString *const kCbcbdGd = @"gd";
NSString *const kCbcbdCarId = @"carId";
NSString *const kCbcbdCms = @"cms";
NSString *const kCbcbdXlxrj = @"xlxrj";
NSString *const kCbcbdKd = @"kd";
NSString *const kCbcbdCd = @"cd";
NSString *const kCbcbdHlj = @"hlj";
NSString *const kCbcbdYxrj = @"yxrj";
NSString *const kCbcbdLdjx = @"ldjx";


@interface Cbcbd ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbcbd

@synthesize zbzl = _zbzl;
@synthesize csjg = _csjg;
@synthesize zj = _zj;
@synthesize qlj = _qlj;
@synthesize zws = _zws;
@synthesize gd = _gd;
@synthesize carId = _carId;
@synthesize cms = _cms;
@synthesize xlxrj = _xlxrj;
@synthesize kd = _kd;
@synthesize cd = _cd;
@synthesize hlj = _hlj;
@synthesize yxrj = _yxrj;
@synthesize ldjx = _ldjx;


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
            self.zbzl = [self objectOrNilForKey:kCbcbdZbzl fromDictionary:dict];
            self.csjg = [self objectOrNilForKey:kCbcbdCsjg fromDictionary:dict];
            self.zj = [self objectOrNilForKey:kCbcbdZj fromDictionary:dict];
            self.qlj = [self objectOrNilForKey:kCbcbdQlj fromDictionary:dict];
            self.zws = [self objectOrNilForKey:kCbcbdZws fromDictionary:dict];
            self.gd = [self objectOrNilForKey:kCbcbdGd fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbcbdCarId fromDictionary:dict] doubleValue];
            self.cms = [self objectOrNilForKey:kCbcbdCms fromDictionary:dict];
            self.xlxrj = [self objectOrNilForKey:kCbcbdXlxrj fromDictionary:dict];
            self.kd = [self objectOrNilForKey:kCbcbdKd fromDictionary:dict];
            self.cd = [self objectOrNilForKey:kCbcbdCd fromDictionary:dict];
            self.hlj = [self objectOrNilForKey:kCbcbdHlj fromDictionary:dict];
            self.yxrj = [self objectOrNilForKey:kCbcbdYxrj fromDictionary:dict];
            self.ldjx = [self objectOrNilForKey:kCbcbdLdjx fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.zbzl forKey:kCbcbdZbzl];
    [mutableDict setValue:self.csjg forKey:kCbcbdCsjg];
    [mutableDict setValue:self.zj forKey:kCbcbdZj];
    [mutableDict setValue:self.qlj forKey:kCbcbdQlj];
    [mutableDict setValue:self.zws forKey:kCbcbdZws];
    [mutableDict setValue:self.gd forKey:kCbcbdGd];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbcbdCarId];
    [mutableDict setValue:self.cms forKey:kCbcbdCms];
    [mutableDict setValue:self.xlxrj forKey:kCbcbdXlxrj];
    [mutableDict setValue:self.kd forKey:kCbcbdKd];
    [mutableDict setValue:self.cd forKey:kCbcbdCd];
    [mutableDict setValue:self.hlj forKey:kCbcbdHlj];
    [mutableDict setValue:self.yxrj forKey:kCbcbdYxrj];
    [mutableDict setValue:self.ldjx forKey:kCbcbdLdjx];

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

    self.zbzl = [aDecoder decodeObjectForKey:kCbcbdZbzl];
    self.csjg = [aDecoder decodeObjectForKey:kCbcbdCsjg];
    self.zj = [aDecoder decodeObjectForKey:kCbcbdZj];
    self.qlj = [aDecoder decodeObjectForKey:kCbcbdQlj];
    self.zws = [aDecoder decodeObjectForKey:kCbcbdZws];
    self.gd = [aDecoder decodeObjectForKey:kCbcbdGd];
    self.carId = [aDecoder decodeDoubleForKey:kCbcbdCarId];
    self.cms = [aDecoder decodeObjectForKey:kCbcbdCms];
    self.xlxrj = [aDecoder decodeObjectForKey:kCbcbdXlxrj];
    self.kd = [aDecoder decodeObjectForKey:kCbcbdKd];
    self.cd = [aDecoder decodeObjectForKey:kCbcbdCd];
    self.hlj = [aDecoder decodeObjectForKey:kCbcbdHlj];
    self.yxrj = [aDecoder decodeObjectForKey:kCbcbdYxrj];
    self.ldjx = [aDecoder decodeObjectForKey:kCbcbdLdjx];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_zbzl forKey:kCbcbdZbzl];
    [aCoder encodeObject:_csjg forKey:kCbcbdCsjg];
    [aCoder encodeObject:_zj forKey:kCbcbdZj];
    [aCoder encodeObject:_qlj forKey:kCbcbdQlj];
    [aCoder encodeObject:_zws forKey:kCbcbdZws];
    [aCoder encodeObject:_gd forKey:kCbcbdGd];
    [aCoder encodeDouble:_carId forKey:kCbcbdCarId];
    [aCoder encodeObject:_cms forKey:kCbcbdCms];
    [aCoder encodeObject:_xlxrj forKey:kCbcbdXlxrj];
    [aCoder encodeObject:_kd forKey:kCbcbdKd];
    [aCoder encodeObject:_cd forKey:kCbcbdCd];
    [aCoder encodeObject:_hlj forKey:kCbcbdHlj];
    [aCoder encodeObject:_yxrj forKey:kCbcbdYxrj];
    [aCoder encodeObject:_ldjx forKey:kCbcbdLdjx];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbcbd *copy = [[Cbcbd alloc] init];
    
    if (copy) {

        copy.zbzl = [self.zbzl copyWithZone:zone];
        copy.csjg = [self.csjg copyWithZone:zone];
        copy.zj = [self.zj copyWithZone:zone];
        copy.qlj = [self.qlj copyWithZone:zone];
        copy.zws = [self.zws copyWithZone:zone];
        copy.gd = [self.gd copyWithZone:zone];
        copy.carId = self.carId;
        copy.cms = [self.cms copyWithZone:zone];
        copy.xlxrj = [self.xlxrj copyWithZone:zone];
        copy.kd = [self.kd copyWithZone:zone];
        copy.cd = [self.cd copyWithZone:zone];
        copy.hlj = [self.hlj copyWithZone:zone];
        copy.yxrj = [self.yxrj copyWithZone:zone];
        copy.ldjx = [self.ldjx copyWithZone:zone];
    }
    
    return copy;
}


@end
