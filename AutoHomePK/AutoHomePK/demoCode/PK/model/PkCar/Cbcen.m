//
//  Cbcen.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbcen.h"


NSString *const kCbcenCylibderArrangement = @"cylibderArrangement";
NSString *const kCbcenCompressionRatio = @"compressionRatio";
NSString *const kCbcenBore = @"bore";
NSString *const kCbcenCylinderHeadMaterial = @"cylinderHeadMaterial";
NSString *const kCbcenEngineSpTe = @"engineSpTe";
NSString *const kCbcenEngineGasGrade = @"engineGasGrade";
NSString *const kCbcenEngineAiForm = @"engineAiForm";
NSString *const kCbcenAdmissionGear = @"admissionGear";
NSString *const kCbcenEngineMaxNs = @"engineMaxNs";
NSString *const kCbcenEngineFuelType = @"engineFuelType";
NSString *const kCbcenStroke = @"stroke";
NSString *const kCbcenCarId = @"carId";
NSString *const kCbcenEnvSta = @"envSta";
NSString *const kCbcenEngineMaxPs = @"engineMaxPs";
NSString *const kCbcenEngineModel = @"engineModel";
NSString *const kCbcenEngineMaxPo = @"engineMaxPo";
NSString *const kCbcenCylibderPervalveNum = @"cylibderPervalveNum";
NSString *const kCbcenCylinderBodyMaterial = @"cylinderBodyMaterial";
NSString *const kCbcenEngineSupplyMode = @"engineSupplyMode";
NSString *const kCbcenCylibderNum = @"cylibderNum";
NSString *const kCbcenEngineCapacity = @"engineCapacity";
NSString *const kCbcenEngineMaxHp = @"engineMaxHp";


@interface Cbcen ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbcen

@synthesize cylibderArrangement = _cylibderArrangement;
@synthesize compressionRatio = _compressionRatio;
@synthesize bore = _bore;
@synthesize cylinderHeadMaterial = _cylinderHeadMaterial;
@synthesize engineSpTe = _engineSpTe;
@synthesize engineGasGrade = _engineGasGrade;
@synthesize engineAiForm = _engineAiForm;
@synthesize admissionGear = _admissionGear;
@synthesize engineMaxNs = _engineMaxNs;
@synthesize engineFuelType = _engineFuelType;
@synthesize stroke = _stroke;
@synthesize carId = _carId;
@synthesize envSta = _envSta;
@synthesize engineMaxPs = _engineMaxPs;
@synthesize engineModel = _engineModel;
@synthesize engineMaxPo = _engineMaxPo;
@synthesize cylibderPervalveNum = _cylibderPervalveNum;
@synthesize cylinderBodyMaterial = _cylinderBodyMaterial;
@synthesize engineSupplyMode = _engineSupplyMode;
@synthesize cylibderNum = _cylibderNum;
@synthesize engineCapacity = _engineCapacity;
@synthesize engineMaxHp = _engineMaxHp;


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
            self.cylibderArrangement = [self objectOrNilForKey:kCbcenCylibderArrangement fromDictionary:dict];
            self.compressionRatio = [self objectOrNilForKey:kCbcenCompressionRatio fromDictionary:dict];
            self.bore = [self objectOrNilForKey:kCbcenBore fromDictionary:dict];
            self.cylinderHeadMaterial = [self objectOrNilForKey:kCbcenCylinderHeadMaterial fromDictionary:dict];
            self.engineSpTe = [self objectOrNilForKey:kCbcenEngineSpTe fromDictionary:dict];
            self.engineGasGrade = [self objectOrNilForKey:kCbcenEngineGasGrade fromDictionary:dict];
            self.engineAiForm = [self objectOrNilForKey:kCbcenEngineAiForm fromDictionary:dict];
            self.admissionGear = [self objectOrNilForKey:kCbcenAdmissionGear fromDictionary:dict];
            self.engineMaxNs = [self objectOrNilForKey:kCbcenEngineMaxNs fromDictionary:dict];
            self.engineFuelType = [self objectOrNilForKey:kCbcenEngineFuelType fromDictionary:dict];
            self.stroke = [self objectOrNilForKey:kCbcenStroke fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbcenCarId fromDictionary:dict] doubleValue];
            self.envSta = [self objectOrNilForKey:kCbcenEnvSta fromDictionary:dict];
            self.engineMaxPs = [self objectOrNilForKey:kCbcenEngineMaxPs fromDictionary:dict];
            self.engineModel = [self objectOrNilForKey:kCbcenEngineModel fromDictionary:dict];
            self.engineMaxPo = [self objectOrNilForKey:kCbcenEngineMaxPo fromDictionary:dict];
            self.cylibderPervalveNum = [self objectOrNilForKey:kCbcenCylibderPervalveNum fromDictionary:dict];
            self.cylinderBodyMaterial = [self objectOrNilForKey:kCbcenCylinderBodyMaterial fromDictionary:dict];
            self.engineSupplyMode = [self objectOrNilForKey:kCbcenEngineSupplyMode fromDictionary:dict];
            self.cylibderNum = [self objectOrNilForKey:kCbcenCylibderNum fromDictionary:dict];
            self.engineCapacity = [self objectOrNilForKey:kCbcenEngineCapacity fromDictionary:dict];
            self.engineMaxHp = [self objectOrNilForKey:kCbcenEngineMaxHp fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.cylibderArrangement forKey:kCbcenCylibderArrangement];
    [mutableDict setValue:self.compressionRatio forKey:kCbcenCompressionRatio];
    [mutableDict setValue:self.bore forKey:kCbcenBore];
    [mutableDict setValue:self.cylinderHeadMaterial forKey:kCbcenCylinderHeadMaterial];
    [mutableDict setValue:self.engineSpTe forKey:kCbcenEngineSpTe];
    [mutableDict setValue:self.engineGasGrade forKey:kCbcenEngineGasGrade];
    [mutableDict setValue:self.engineAiForm forKey:kCbcenEngineAiForm];
    [mutableDict setValue:self.admissionGear forKey:kCbcenAdmissionGear];
    [mutableDict setValue:self.engineMaxNs forKey:kCbcenEngineMaxNs];
    [mutableDict setValue:self.engineFuelType forKey:kCbcenEngineFuelType];
    [mutableDict setValue:self.stroke forKey:kCbcenStroke];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbcenCarId];
    [mutableDict setValue:self.envSta forKey:kCbcenEnvSta];
    [mutableDict setValue:self.engineMaxPs forKey:kCbcenEngineMaxPs];
    [mutableDict setValue:self.engineModel forKey:kCbcenEngineModel];
    [mutableDict setValue:self.engineMaxPo forKey:kCbcenEngineMaxPo];
    [mutableDict setValue:self.cylibderPervalveNum forKey:kCbcenCylibderPervalveNum];
    [mutableDict setValue:self.cylinderBodyMaterial forKey:kCbcenCylinderBodyMaterial];
    [mutableDict setValue:self.engineSupplyMode forKey:kCbcenEngineSupplyMode];
    [mutableDict setValue:self.cylibderNum forKey:kCbcenCylibderNum];
    [mutableDict setValue:self.engineCapacity forKey:kCbcenEngineCapacity];
    [mutableDict setValue:self.engineMaxHp forKey:kCbcenEngineMaxHp];

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

    self.cylibderArrangement = [aDecoder decodeObjectForKey:kCbcenCylibderArrangement];
    self.compressionRatio = [aDecoder decodeObjectForKey:kCbcenCompressionRatio];
    self.bore = [aDecoder decodeObjectForKey:kCbcenBore];
    self.cylinderHeadMaterial = [aDecoder decodeObjectForKey:kCbcenCylinderHeadMaterial];
    self.engineSpTe = [aDecoder decodeObjectForKey:kCbcenEngineSpTe];
    self.engineGasGrade = [aDecoder decodeObjectForKey:kCbcenEngineGasGrade];
    self.engineAiForm = [aDecoder decodeObjectForKey:kCbcenEngineAiForm];
    self.admissionGear = [aDecoder decodeObjectForKey:kCbcenAdmissionGear];
    self.engineMaxNs = [aDecoder decodeObjectForKey:kCbcenEngineMaxNs];
    self.engineFuelType = [aDecoder decodeObjectForKey:kCbcenEngineFuelType];
    self.stroke = [aDecoder decodeObjectForKey:kCbcenStroke];
    self.carId = [aDecoder decodeDoubleForKey:kCbcenCarId];
    self.envSta = [aDecoder decodeObjectForKey:kCbcenEnvSta];
    self.engineMaxPs = [aDecoder decodeObjectForKey:kCbcenEngineMaxPs];
    self.engineModel = [aDecoder decodeObjectForKey:kCbcenEngineModel];
    self.engineMaxPo = [aDecoder decodeObjectForKey:kCbcenEngineMaxPo];
    self.cylibderPervalveNum = [aDecoder decodeObjectForKey:kCbcenCylibderPervalveNum];
    self.cylinderBodyMaterial = [aDecoder decodeObjectForKey:kCbcenCylinderBodyMaterial];
    self.engineSupplyMode = [aDecoder decodeObjectForKey:kCbcenEngineSupplyMode];
    self.cylibderNum = [aDecoder decodeObjectForKey:kCbcenCylibderNum];
    self.engineCapacity = [aDecoder decodeObjectForKey:kCbcenEngineCapacity];
    self.engineMaxHp = [aDecoder decodeObjectForKey:kCbcenEngineMaxHp];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_cylibderArrangement forKey:kCbcenCylibderArrangement];
    [aCoder encodeObject:_compressionRatio forKey:kCbcenCompressionRatio];
    [aCoder encodeObject:_bore forKey:kCbcenBore];
    [aCoder encodeObject:_cylinderHeadMaterial forKey:kCbcenCylinderHeadMaterial];
    [aCoder encodeObject:_engineSpTe forKey:kCbcenEngineSpTe];
    [aCoder encodeObject:_engineGasGrade forKey:kCbcenEngineGasGrade];
    [aCoder encodeObject:_engineAiForm forKey:kCbcenEngineAiForm];
    [aCoder encodeObject:_admissionGear forKey:kCbcenAdmissionGear];
    [aCoder encodeObject:_engineMaxNs forKey:kCbcenEngineMaxNs];
    [aCoder encodeObject:_engineFuelType forKey:kCbcenEngineFuelType];
    [aCoder encodeObject:_stroke forKey:kCbcenStroke];
    [aCoder encodeDouble:_carId forKey:kCbcenCarId];
    [aCoder encodeObject:_envSta forKey:kCbcenEnvSta];
    [aCoder encodeObject:_engineMaxPs forKey:kCbcenEngineMaxPs];
    [aCoder encodeObject:_engineModel forKey:kCbcenEngineModel];
    [aCoder encodeObject:_engineMaxPo forKey:kCbcenEngineMaxPo];
    [aCoder encodeObject:_cylibderPervalveNum forKey:kCbcenCylibderPervalveNum];
    [aCoder encodeObject:_cylinderBodyMaterial forKey:kCbcenCylinderBodyMaterial];
    [aCoder encodeObject:_engineSupplyMode forKey:kCbcenEngineSupplyMode];
    [aCoder encodeObject:_cylibderNum forKey:kCbcenCylibderNum];
    [aCoder encodeObject:_engineCapacity forKey:kCbcenEngineCapacity];
    [aCoder encodeObject:_engineMaxHp forKey:kCbcenEngineMaxHp];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbcen *copy = [[Cbcen alloc] init];
    
    if (copy) {

        copy.cylibderArrangement = [self.cylibderArrangement copyWithZone:zone];
        copy.compressionRatio = [self.compressionRatio copyWithZone:zone];
        copy.bore = [self.bore copyWithZone:zone];
        copy.cylinderHeadMaterial = [self.cylinderHeadMaterial copyWithZone:zone];
        copy.engineSpTe = [self.engineSpTe copyWithZone:zone];
        copy.engineGasGrade = [self.engineGasGrade copyWithZone:zone];
        copy.engineAiForm = [self.engineAiForm copyWithZone:zone];
        copy.admissionGear = [self.admissionGear copyWithZone:zone];
        copy.engineMaxNs = [self.engineMaxNs copyWithZone:zone];
        copy.engineFuelType = [self.engineFuelType copyWithZone:zone];
        copy.stroke = [self.stroke copyWithZone:zone];
        copy.carId = self.carId;
        copy.envSta = [self.envSta copyWithZone:zone];
        copy.engineMaxPs = [self.engineMaxPs copyWithZone:zone];
        copy.engineModel = [self.engineModel copyWithZone:zone];
        copy.engineMaxPo = [self.engineMaxPo copyWithZone:zone];
        copy.cylibderPervalveNum = [self.cylibderPervalveNum copyWithZone:zone];
        copy.cylinderBodyMaterial = [self.cylinderBodyMaterial copyWithZone:zone];
        copy.engineSupplyMode = [self.engineSupplyMode copyWithZone:zone];
        copy.cylibderNum = [self.cylibderNum copyWithZone:zone];
        copy.engineCapacity = [self.engineCapacity copyWithZone:zone];
        copy.engineMaxHp = [self.engineMaxHp copyWithZone:zone];
    }
    
    return copy;
}


@end
