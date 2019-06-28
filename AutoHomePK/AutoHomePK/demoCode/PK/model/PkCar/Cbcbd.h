//
//  Cbcbd.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbcbd : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *zbzl;
@property (nonatomic, strong) NSString *csjg;
@property (nonatomic, strong) NSString *zj;
@property (nonatomic, strong) NSString *qlj;
@property (nonatomic, strong) NSString *zws;
@property (nonatomic, strong) NSString *gd;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *cms;
@property (nonatomic, strong) NSString *xlxrj;
@property (nonatomic, strong) NSString *kd;
@property (nonatomic, strong) NSString *cd;
@property (nonatomic, strong) NSString *hlj;
@property (nonatomic, strong) NSString *yxrj;
@property (nonatomic, strong) NSString *ldjx;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
