//
//  Cib.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cib : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double isRecom;
@property (nonatomic, assign) double proPrice;
@property (nonatomic, strong) NSString *cityId;
@property (nonatomic, strong) NSString *insTime;
@property (nonatomic, strong) NSString *vehicleEmission;
@property (nonatomic, strong) NSString *carCode;
@property (nonatomic, assign) double carOld;
@property (nonatomic, strong) NSString *fnoTime;
@property (nonatomic, strong) NSString *cityName;
@property (nonatomic, strong) NSString *transmissionModel;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, assign) double carId;
@property (nonatomic, assign) double ownerType;
@property (nonatomic, strong) NSString *proCountry;
@property (nonatomic, strong) NSString *mtnType;
@property (nonatomic, strong) NSString *range;
@property (nonatomic, strong) NSString *saleCount;
@property (nonatomic, strong) NSString *vehicleEmissionStandards;
@property (nonatomic, strong) NSString *ves;
@property (nonatomic, strong) NSString *checkTime;
@property (nonatomic, assign) double carType;
@property (nonatomic, assign) double carBrand3;
@property (nonatomic, assign) double isNewCar;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
