//
//  Cbcba.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbcba : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *groundClMe;
@property (nonatomic, strong) NSString *factoryName;
@property (nonatomic, strong) NSString *maxSpeed;
@property (nonatomic, strong) NSString *hkBraMe;
@property (nonatomic, strong) NSString *lwh;
@property (nonatomic, strong) NSString *carModel;
@property (nonatomic, strong) NSString *engine;
@property (nonatomic, strong) NSString *hkAccMe;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *price;
@property (nonatomic, strong) NSString *creatorId;
@property (nonatomic, strong) NSString *bodyStructure;
@property (nonatomic, strong) NSString *gearbox;
@property (nonatomic, strong) NSString *hkConMe;
@property (nonatomic, strong) NSString *hkConGov;
@property (nonatomic, strong) NSString *vehicleWarranty;
@property (nonatomic, strong) NSString *hkAccFa;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
