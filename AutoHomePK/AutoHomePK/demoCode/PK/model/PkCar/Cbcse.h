//
//  Cbcse.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbcse : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *rearHeat;
@property (nonatomic, strong) NSString *elecMemory;
@property (nonatomic, strong) NSString *sport;
@property (nonatomic, strong) NSString *lea;
@property (nonatomic, strong) NSString *auxElecAdj;
@property (nonatomic, strong) NSString *frontVent;
@property (nonatomic, strong) NSString *rearCentRail;
@property (nonatomic, strong) NSString *secMovAdj;
@property (nonatomic, strong) NSString *mainElecAdj;
@property (nonatomic, strong) NSString *frontMass;
@property (nonatomic, strong) NSString *rearMass;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *lumAdj;
@property (nonatomic, strong) NSString *heiAdj;
@property (nonatomic, strong) NSString *rearRack;
@property (nonatomic, strong) NSString *shoAdj;
@property (nonatomic, strong) NSString *thirdRow;
@property (nonatomic, strong) NSString *rearVent;
@property (nonatomic, strong) NSString *rearRecWay;
@property (nonatomic, strong) NSString *frontHeat;
@property (nonatomic, strong) NSString *secBackAngAdj;
@property (nonatomic, strong) NSString *frontCentRail;
@property (nonatomic, strong) NSString *rearElecAdj;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
