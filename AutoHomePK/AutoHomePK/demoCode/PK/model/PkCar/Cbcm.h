//
//  Cbcm.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbcm : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *los;
@property (nonatomic, strong) NSString *msys;
@property (nonatomic, strong) NSString *gps;
@property (nonatomic, strong) NSString *bsc;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *ccsc;
@property (nonatomic, strong) NSString *power;
@property (nonatomic, strong) NSString *audioNum;
@property (nonatomic, strong) NSString *ctv;
@property (nonatomic, strong) NSString *audioBrand;
@property (nonatomic, strong) NSString *omi;
@property (nonatomic, strong) NSString *cd;
@property (nonatomic, strong) NSString *blcp;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
