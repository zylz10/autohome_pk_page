//
//  Cbcen.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbcen : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *cylibderArrangement;
@property (nonatomic, strong) NSString *compressionRatio;
@property (nonatomic, strong) NSString *bore;
@property (nonatomic, strong) NSString *cylinderHeadMaterial;
@property (nonatomic, strong) NSString *engineSpTe;
@property (nonatomic, strong) NSString *engineGasGrade;
@property (nonatomic, strong) NSString *engineAiForm;
@property (nonatomic, strong) NSString *admissionGear;
@property (nonatomic, strong) NSString *engineMaxNs;
@property (nonatomic, strong) NSString *engineFuelType;
@property (nonatomic, strong) NSString *stroke;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *envSta;
@property (nonatomic, strong) NSString *engineMaxPs;
@property (nonatomic, strong) NSString *engineModel;
@property (nonatomic, strong) NSString *engineMaxPo;
@property (nonatomic, strong) NSString *cylibderPervalveNum;
@property (nonatomic, strong) NSString *cylinderBodyMaterial;
@property (nonatomic, strong) NSString *engineSupplyMode;
@property (nonatomic, strong) NSString *cylibderNum;
@property (nonatomic, strong) NSString *engineCapacity;
@property (nonatomic, strong) NSString *engineMaxHp;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
