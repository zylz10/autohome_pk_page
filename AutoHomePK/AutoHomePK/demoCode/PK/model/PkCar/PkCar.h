//
//  PkCar.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Cbcl, Cbcen, Cbcba, Cbcel, GoodsBasic, Cbcop, Cbcgb, Cbcc, Cbcse, Cbcbk, Cbcbd, Cbcos, Cbcgl, Cib, Cbcsa, Cbcm, Cbci, Cbca, Cbct;

@interface PkCar : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) Cbcl *cbcl;
@property (nonatomic, strong) Cbcen *cbcen;
@property (nonatomic, strong) Cbcba *cbcba;
@property (nonatomic, strong) Cbcel *cbcel;
@property (nonatomic, strong) GoodsBasic *goodsBasic;
@property (nonatomic, strong) Cbcop *cbcop;
@property (nonatomic, strong) Cbcgb *cbcgb;
@property (nonatomic, strong) Cbcc *cbcc;
@property (nonatomic, strong) Cbcse *cbcse;
@property (nonatomic, strong) Cbcbk *cbcbk;
@property (nonatomic, strong) Cbcbd *cbcbd;
@property (nonatomic, strong) Cbcos *cbcos;
@property (nonatomic, strong) Cbcgl *cbcgl;
@property (nonatomic, strong) Cib *cib;
@property (nonatomic, strong) Cbcsa *cbcsa;
@property (nonatomic, strong) Cbcm *cbcm;
@property (nonatomic, strong) Cbci *cbci;
@property (nonatomic, strong) Cbca *cbca;
@property (nonatomic, strong) Cbct *cbct;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
