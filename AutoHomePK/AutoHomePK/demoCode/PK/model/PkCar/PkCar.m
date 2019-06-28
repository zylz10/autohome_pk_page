//
//  PkCar.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "PkCar.h"
#import "Cbcl.h"
#import "Cbcen.h"
#import "Cbcba.h"
#import "Cbcel.h"
#import "GoodsBasic.h"
#import "Cbcop.h"
#import "Cbcgb.h"
#import "Cbcc.h"
#import "Cbcse.h"
#import "Cbcbk.h"
#import "Cbcbd.h"
#import "Cbcos.h"
#import "Cbcgl.h"
#import "Cib.h"
#import "Cbcsa.h"
#import "Cbcm.h"
#import "Cbci.h"
#import "Cbca.h"
#import "Cbct.h"


NSString *const kPkCarCbcl = @"cbcl";
NSString *const kPkCarCbcen = @"cbcen";
NSString *const kPkCarCbcba = @"cbcba";
NSString *const kPkCarCbcel = @"cbcel";
NSString *const kPkCarGoodsBasic = @"goodsBasic";
NSString *const kPkCarCbcop = @"cbcop";
NSString *const kPkCarCbcgb = @"cbcgb";
NSString *const kPkCarCbcc = @"cbcc";
NSString *const kPkCarCbcse = @"cbcse";
NSString *const kPkCarCbcbk = @"cbcbk";
NSString *const kPkCarCbcbd = @"cbcbd";
NSString *const kPkCarCbcos = @"cbcos";
NSString *const kPkCarCbcgl = @"cbcgl";
NSString *const kPkCarCib = @"cib";
NSString *const kPkCarCbcsa = @"cbcsa";
NSString *const kPkCarCbcm = @"cbcm";
NSString *const kPkCarCbci = @"cbci";
NSString *const kPkCarCbca = @"cbca";
NSString *const kPkCarCbct = @"cbct";


@interface PkCar ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation PkCar

@synthesize cbcl = _cbcl;
@synthesize cbcen = _cbcen;
@synthesize cbcba = _cbcba;
@synthesize cbcel = _cbcel;
@synthesize goodsBasic = _goodsBasic;
@synthesize cbcop = _cbcop;
@synthesize cbcgb = _cbcgb;
@synthesize cbcc = _cbcc;
@synthesize cbcse = _cbcse;
@synthesize cbcbk = _cbcbk;
@synthesize cbcbd = _cbcbd;
@synthesize cbcos = _cbcos;
@synthesize cbcgl = _cbcgl;
@synthesize cib = _cib;
@synthesize cbcsa = _cbcsa;
@synthesize cbcm = _cbcm;
@synthesize cbci = _cbci;
@synthesize cbca = _cbca;
@synthesize cbct = _cbct;


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
            self.cbcl = [Cbcl modelObjectWithDictionary:[dict objectForKey:kPkCarCbcl]];
            self.cbcen = [Cbcen modelObjectWithDictionary:[dict objectForKey:kPkCarCbcen]];
            self.cbcba = [Cbcba modelObjectWithDictionary:[dict objectForKey:kPkCarCbcba]];
            self.cbcel = [Cbcel modelObjectWithDictionary:[dict objectForKey:kPkCarCbcel]];
            self.goodsBasic = [GoodsBasic modelObjectWithDictionary:[dict objectForKey:kPkCarGoodsBasic]];
            self.cbcop = [Cbcop modelObjectWithDictionary:[dict objectForKey:kPkCarCbcop]];
            self.cbcgb = [Cbcgb modelObjectWithDictionary:[dict objectForKey:kPkCarCbcgb]];
            self.cbcc = [Cbcc modelObjectWithDictionary:[dict objectForKey:kPkCarCbcc]];
            self.cbcse = [Cbcse modelObjectWithDictionary:[dict objectForKey:kPkCarCbcse]];
            self.cbcbk = [Cbcbk modelObjectWithDictionary:[dict objectForKey:kPkCarCbcbk]];
            self.cbcbd = [Cbcbd modelObjectWithDictionary:[dict objectForKey:kPkCarCbcbd]];
            self.cbcos = [Cbcos modelObjectWithDictionary:[dict objectForKey:kPkCarCbcos]];
            self.cbcgl = [Cbcgl modelObjectWithDictionary:[dict objectForKey:kPkCarCbcgl]];
            self.cib = [Cib modelObjectWithDictionary:[dict objectForKey:kPkCarCib]];
            self.cbcsa = [Cbcsa modelObjectWithDictionary:[dict objectForKey:kPkCarCbcsa]];
            self.cbcm = [Cbcm modelObjectWithDictionary:[dict objectForKey:kPkCarCbcm]];
            self.cbci = [Cbci modelObjectWithDictionary:[dict objectForKey:kPkCarCbci]];
            self.cbca = [Cbca modelObjectWithDictionary:[dict objectForKey:kPkCarCbca]];
            self.cbct = [Cbct modelObjectWithDictionary:[dict objectForKey:kPkCarCbct]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.cbcl dictionaryRepresentation] forKey:kPkCarCbcl];
    [mutableDict setValue:[self.cbcen dictionaryRepresentation] forKey:kPkCarCbcen];
    [mutableDict setValue:[self.cbcba dictionaryRepresentation] forKey:kPkCarCbcba];
    [mutableDict setValue:[self.cbcel dictionaryRepresentation] forKey:kPkCarCbcel];
    [mutableDict setValue:[self.goodsBasic dictionaryRepresentation] forKey:kPkCarGoodsBasic];
    [mutableDict setValue:[self.cbcop dictionaryRepresentation] forKey:kPkCarCbcop];
    [mutableDict setValue:[self.cbcgb dictionaryRepresentation] forKey:kPkCarCbcgb];
    [mutableDict setValue:[self.cbcc dictionaryRepresentation] forKey:kPkCarCbcc];
    [mutableDict setValue:[self.cbcse dictionaryRepresentation] forKey:kPkCarCbcse];
    [mutableDict setValue:[self.cbcbk dictionaryRepresentation] forKey:kPkCarCbcbk];
    [mutableDict setValue:[self.cbcbd dictionaryRepresentation] forKey:kPkCarCbcbd];
    [mutableDict setValue:[self.cbcos dictionaryRepresentation] forKey:kPkCarCbcos];
    [mutableDict setValue:[self.cbcgl dictionaryRepresentation] forKey:kPkCarCbcgl];
    [mutableDict setValue:[self.cib dictionaryRepresentation] forKey:kPkCarCib];
    [mutableDict setValue:[self.cbcsa dictionaryRepresentation] forKey:kPkCarCbcsa];
    [mutableDict setValue:[self.cbcm dictionaryRepresentation] forKey:kPkCarCbcm];
    [mutableDict setValue:[self.cbci dictionaryRepresentation] forKey:kPkCarCbci];
    [mutableDict setValue:[self.cbca dictionaryRepresentation] forKey:kPkCarCbca];
    [mutableDict setValue:[self.cbct dictionaryRepresentation] forKey:kPkCarCbct];

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

    self.cbcl = [aDecoder decodeObjectForKey:kPkCarCbcl];
    self.cbcen = [aDecoder decodeObjectForKey:kPkCarCbcen];
    self.cbcba = [aDecoder decodeObjectForKey:kPkCarCbcba];
    self.cbcel = [aDecoder decodeObjectForKey:kPkCarCbcel];
    self.goodsBasic = [aDecoder decodeObjectForKey:kPkCarGoodsBasic];
    self.cbcop = [aDecoder decodeObjectForKey:kPkCarCbcop];
    self.cbcgb = [aDecoder decodeObjectForKey:kPkCarCbcgb];
    self.cbcc = [aDecoder decodeObjectForKey:kPkCarCbcc];
    self.cbcse = [aDecoder decodeObjectForKey:kPkCarCbcse];
    self.cbcbk = [aDecoder decodeObjectForKey:kPkCarCbcbk];
    self.cbcbd = [aDecoder decodeObjectForKey:kPkCarCbcbd];
    self.cbcos = [aDecoder decodeObjectForKey:kPkCarCbcos];
    self.cbcgl = [aDecoder decodeObjectForKey:kPkCarCbcgl];
    self.cib = [aDecoder decodeObjectForKey:kPkCarCib];
    self.cbcsa = [aDecoder decodeObjectForKey:kPkCarCbcsa];
    self.cbcm = [aDecoder decodeObjectForKey:kPkCarCbcm];
    self.cbci = [aDecoder decodeObjectForKey:kPkCarCbci];
    self.cbca = [aDecoder decodeObjectForKey:kPkCarCbca];
    self.cbct = [aDecoder decodeObjectForKey:kPkCarCbct];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_cbcl forKey:kPkCarCbcl];
    [aCoder encodeObject:_cbcen forKey:kPkCarCbcen];
    [aCoder encodeObject:_cbcba forKey:kPkCarCbcba];
    [aCoder encodeObject:_cbcel forKey:kPkCarCbcel];
    [aCoder encodeObject:_goodsBasic forKey:kPkCarGoodsBasic];
    [aCoder encodeObject:_cbcop forKey:kPkCarCbcop];
    [aCoder encodeObject:_cbcgb forKey:kPkCarCbcgb];
    [aCoder encodeObject:_cbcc forKey:kPkCarCbcc];
    [aCoder encodeObject:_cbcse forKey:kPkCarCbcse];
    [aCoder encodeObject:_cbcbk forKey:kPkCarCbcbk];
    [aCoder encodeObject:_cbcbd forKey:kPkCarCbcbd];
    [aCoder encodeObject:_cbcos forKey:kPkCarCbcos];
    [aCoder encodeObject:_cbcgl forKey:kPkCarCbcgl];
    [aCoder encodeObject:_cib forKey:kPkCarCib];
    [aCoder encodeObject:_cbcsa forKey:kPkCarCbcsa];
    [aCoder encodeObject:_cbcm forKey:kPkCarCbcm];
    [aCoder encodeObject:_cbci forKey:kPkCarCbci];
    [aCoder encodeObject:_cbca forKey:kPkCarCbca];
    [aCoder encodeObject:_cbct forKey:kPkCarCbct];
}

- (id)copyWithZone:(NSZone *)zone
{
    PkCar *copy = [[PkCar alloc] init];
    
    if (copy) {

        copy.cbcl = [self.cbcl copyWithZone:zone];
        copy.cbcen = [self.cbcen copyWithZone:zone];
        copy.cbcba = [self.cbcba copyWithZone:zone];
        copy.cbcel = [self.cbcel copyWithZone:zone];
        copy.goodsBasic = [self.goodsBasic copyWithZone:zone];
        copy.cbcop = [self.cbcop copyWithZone:zone];
        copy.cbcgb = [self.cbcgb copyWithZone:zone];
        copy.cbcc = [self.cbcc copyWithZone:zone];
        copy.cbcse = [self.cbcse copyWithZone:zone];
        copy.cbcbk = [self.cbcbk copyWithZone:zone];
        copy.cbcbd = [self.cbcbd copyWithZone:zone];
        copy.cbcos = [self.cbcos copyWithZone:zone];
        copy.cbcgl = [self.cbcgl copyWithZone:zone];
        copy.cib = [self.cib copyWithZone:zone];
        copy.cbcsa = [self.cbcsa copyWithZone:zone];
        copy.cbcm = [self.cbcm copyWithZone:zone];
        copy.cbci = [self.cbci copyWithZone:zone];
        copy.cbca = [self.cbca copyWithZone:zone];
        copy.cbct = [self.cbct copyWithZone:zone];
    }
    
    return copy;
}


@end
