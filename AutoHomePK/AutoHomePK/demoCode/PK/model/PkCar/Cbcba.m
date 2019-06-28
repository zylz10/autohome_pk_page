//
//  Cbcba.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbcba.h"


NSString *const kCbcbaGroundClMe = @"groundClMe";
NSString *const kCbcbaFactoryName = @"factoryName";
NSString *const kCbcbaMaxSpeed = @"maxSpeed";
NSString *const kCbcbaHkBraMe = @"hkBraMe";
NSString *const kCbcbaLwh = @"lwh";
NSString *const kCbcbaCarModel = @"carModel";
NSString *const kCbcbaEngine = @"engine";
NSString *const kCbcbaHkAccMe = @"hkAccMe";
NSString *const kCbcbaCarId = @"carId";
NSString *const kCbcbaPrice = @"price";
NSString *const kCbcbaCreatorId = @"creatorId";
NSString *const kCbcbaBodyStructure = @"bodyStructure";
NSString *const kCbcbaGearbox = @"gearbox";
NSString *const kCbcbaHkConMe = @"hkConMe";
NSString *const kCbcbaHkConGov = @"hkConGov";
NSString *const kCbcbaVehicleWarranty = @"vehicleWarranty";
NSString *const kCbcbaHkAccFa = @"hkAccFa";


@interface Cbcba ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbcba

@synthesize groundClMe = _groundClMe;
@synthesize factoryName = _factoryName;
@synthesize maxSpeed = _maxSpeed;
@synthesize hkBraMe = _hkBraMe;
@synthesize lwh = _lwh;
@synthesize carModel = _carModel;
@synthesize engine = _engine;
@synthesize hkAccMe = _hkAccMe;
@synthesize carId = _carId;
@synthesize price = _price;
@synthesize creatorId = _creatorId;
@synthesize bodyStructure = _bodyStructure;
@synthesize gearbox = _gearbox;
@synthesize hkConMe = _hkConMe;
@synthesize hkConGov = _hkConGov;
@synthesize vehicleWarranty = _vehicleWarranty;
@synthesize hkAccFa = _hkAccFa;


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
            self.groundClMe = [self objectOrNilForKey:kCbcbaGroundClMe fromDictionary:dict];
            self.factoryName = [self objectOrNilForKey:kCbcbaFactoryName fromDictionary:dict];
            self.maxSpeed = [self objectOrNilForKey:kCbcbaMaxSpeed fromDictionary:dict];
            self.hkBraMe = [self objectOrNilForKey:kCbcbaHkBraMe fromDictionary:dict];
            self.lwh = [self objectOrNilForKey:kCbcbaLwh fromDictionary:dict];
            self.carModel = [self objectOrNilForKey:kCbcbaCarModel fromDictionary:dict];
            self.engine = [self objectOrNilForKey:kCbcbaEngine fromDictionary:dict];
            self.hkAccMe = [self objectOrNilForKey:kCbcbaHkAccMe fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbcbaCarId fromDictionary:dict] doubleValue];
            self.price = [self objectOrNilForKey:kCbcbaPrice fromDictionary:dict];
            self.creatorId = [self objectOrNilForKey:kCbcbaCreatorId fromDictionary:dict];
            self.bodyStructure = [self objectOrNilForKey:kCbcbaBodyStructure fromDictionary:dict];
            self.gearbox = [self objectOrNilForKey:kCbcbaGearbox fromDictionary:dict];
            self.hkConMe = [self objectOrNilForKey:kCbcbaHkConMe fromDictionary:dict];
            self.hkConGov = [self objectOrNilForKey:kCbcbaHkConGov fromDictionary:dict];
            self.vehicleWarranty = [self objectOrNilForKey:kCbcbaVehicleWarranty fromDictionary:dict];
            self.hkAccFa = [self objectOrNilForKey:kCbcbaHkAccFa fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.groundClMe forKey:kCbcbaGroundClMe];
    [mutableDict setValue:self.factoryName forKey:kCbcbaFactoryName];
    [mutableDict setValue:self.maxSpeed forKey:kCbcbaMaxSpeed];
    [mutableDict setValue:self.hkBraMe forKey:kCbcbaHkBraMe];
    [mutableDict setValue:self.lwh forKey:kCbcbaLwh];
    [mutableDict setValue:self.carModel forKey:kCbcbaCarModel];
    [mutableDict setValue:self.engine forKey:kCbcbaEngine];
    [mutableDict setValue:self.hkAccMe forKey:kCbcbaHkAccMe];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbcbaCarId];
    [mutableDict setValue:self.price forKey:kCbcbaPrice];
    [mutableDict setValue:self.creatorId forKey:kCbcbaCreatorId];
    [mutableDict setValue:self.bodyStructure forKey:kCbcbaBodyStructure];
    [mutableDict setValue:self.gearbox forKey:kCbcbaGearbox];
    [mutableDict setValue:self.hkConMe forKey:kCbcbaHkConMe];
    [mutableDict setValue:self.hkConGov forKey:kCbcbaHkConGov];
    [mutableDict setValue:self.vehicleWarranty forKey:kCbcbaVehicleWarranty];
    [mutableDict setValue:self.hkAccFa forKey:kCbcbaHkAccFa];

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

    self.groundClMe = [aDecoder decodeObjectForKey:kCbcbaGroundClMe];
    self.factoryName = [aDecoder decodeObjectForKey:kCbcbaFactoryName];
    self.maxSpeed = [aDecoder decodeObjectForKey:kCbcbaMaxSpeed];
    self.hkBraMe = [aDecoder decodeObjectForKey:kCbcbaHkBraMe];
    self.lwh = [aDecoder decodeObjectForKey:kCbcbaLwh];
    self.carModel = [aDecoder decodeObjectForKey:kCbcbaCarModel];
    self.engine = [aDecoder decodeObjectForKey:kCbcbaEngine];
    self.hkAccMe = [aDecoder decodeObjectForKey:kCbcbaHkAccMe];
    self.carId = [aDecoder decodeDoubleForKey:kCbcbaCarId];
    self.price = [aDecoder decodeObjectForKey:kCbcbaPrice];
    self.creatorId = [aDecoder decodeObjectForKey:kCbcbaCreatorId];
    self.bodyStructure = [aDecoder decodeObjectForKey:kCbcbaBodyStructure];
    self.gearbox = [aDecoder decodeObjectForKey:kCbcbaGearbox];
    self.hkConMe = [aDecoder decodeObjectForKey:kCbcbaHkConMe];
    self.hkConGov = [aDecoder decodeObjectForKey:kCbcbaHkConGov];
    self.vehicleWarranty = [aDecoder decodeObjectForKey:kCbcbaVehicleWarranty];
    self.hkAccFa = [aDecoder decodeObjectForKey:kCbcbaHkAccFa];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_groundClMe forKey:kCbcbaGroundClMe];
    [aCoder encodeObject:_factoryName forKey:kCbcbaFactoryName];
    [aCoder encodeObject:_maxSpeed forKey:kCbcbaMaxSpeed];
    [aCoder encodeObject:_hkBraMe forKey:kCbcbaHkBraMe];
    [aCoder encodeObject:_lwh forKey:kCbcbaLwh];
    [aCoder encodeObject:_carModel forKey:kCbcbaCarModel];
    [aCoder encodeObject:_engine forKey:kCbcbaEngine];
    [aCoder encodeObject:_hkAccMe forKey:kCbcbaHkAccMe];
    [aCoder encodeDouble:_carId forKey:kCbcbaCarId];
    [aCoder encodeObject:_price forKey:kCbcbaPrice];
    [aCoder encodeObject:_creatorId forKey:kCbcbaCreatorId];
    [aCoder encodeObject:_bodyStructure forKey:kCbcbaBodyStructure];
    [aCoder encodeObject:_gearbox forKey:kCbcbaGearbox];
    [aCoder encodeObject:_hkConMe forKey:kCbcbaHkConMe];
    [aCoder encodeObject:_hkConGov forKey:kCbcbaHkConGov];
    [aCoder encodeObject:_vehicleWarranty forKey:kCbcbaVehicleWarranty];
    [aCoder encodeObject:_hkAccFa forKey:kCbcbaHkAccFa];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbcba *copy = [[Cbcba alloc] init];
    
    if (copy) {

        copy.groundClMe = [self.groundClMe copyWithZone:zone];
        copy.factoryName = [self.factoryName copyWithZone:zone];
        copy.maxSpeed = [self.maxSpeed copyWithZone:zone];
        copy.hkBraMe = [self.hkBraMe copyWithZone:zone];
        copy.lwh = [self.lwh copyWithZone:zone];
        copy.carModel = [self.carModel copyWithZone:zone];
        copy.engine = [self.engine copyWithZone:zone];
        copy.hkAccMe = [self.hkAccMe copyWithZone:zone];
        copy.carId = self.carId;
        copy.price = [self.price copyWithZone:zone];
        copy.creatorId = [self.creatorId copyWithZone:zone];
        copy.bodyStructure = [self.bodyStructure copyWithZone:zone];
        copy.gearbox = [self.gearbox copyWithZone:zone];
        copy.hkConMe = [self.hkConMe copyWithZone:zone];
        copy.hkConGov = [self.hkConGov copyWithZone:zone];
        copy.vehicleWarranty = [self.vehicleWarranty copyWithZone:zone];
        copy.hkAccFa = [self.hkAccFa copyWithZone:zone];
    }
    
    return copy;
}


@end
