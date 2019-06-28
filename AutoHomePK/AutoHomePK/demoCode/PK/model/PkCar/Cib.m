//
//  Cib.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cib.h"


NSString *const kCibIsRecom = @"is_recom";
NSString *const kCibProPrice = @"pro_price";
NSString *const kCibCityId = @"city_id";
NSString *const kCibInsTime = @"ins_time";
NSString *const kCibVehicleEmission = @"vehicle_emission";
NSString *const kCibCarCode = @"car_code";
NSString *const kCibCarOld = @"car_old";
NSString *const kCibFnoTime = @"fno_time";
NSString *const kCibCityName = @"city_name";
NSString *const kCibTransmissionModel = @"transmission_model";
NSString *const kCibState = @"state";
NSString *const kCibCarId = @"carId";
NSString *const kCibOwnerType = @"owner_type";
NSString *const kCibProCountry = @"pro_country";
NSString *const kCibMtnType = @"mtn_type";
NSString *const kCibRange = @"range";
NSString *const kCibSaleCount = @"sale_count";
NSString *const kCibVehicleEmissionStandards = @"vehicle_emission_standards";
NSString *const kCibVes = @"ves";
NSString *const kCibCheckTime = @"check_time";
NSString *const kCibCarType = @"car_type";
NSString *const kCibCarBrand3 = @"car_brand3";
NSString *const kCibIsNewCar = @"is_new_car";


@interface Cib ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cib

@synthesize isRecom = _isRecom;
@synthesize proPrice = _proPrice;
@synthesize cityId = _cityId;
@synthesize insTime = _insTime;
@synthesize vehicleEmission = _vehicleEmission;
@synthesize carCode = _carCode;
@synthesize carOld = _carOld;
@synthesize fnoTime = _fnoTime;
@synthesize cityName = _cityName;
@synthesize transmissionModel = _transmissionModel;
@synthesize state = _state;
@synthesize carId = _carId;
@synthesize ownerType = _ownerType;
@synthesize proCountry = _proCountry;
@synthesize mtnType = _mtnType;
@synthesize range = _range;
@synthesize saleCount = _saleCount;
@synthesize vehicleEmissionStandards = _vehicleEmissionStandards;
@synthesize ves = _ves;
@synthesize checkTime = _checkTime;
@synthesize carType = _carType;
@synthesize carBrand3 = _carBrand3;
@synthesize isNewCar = _isNewCar;


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
            self.isRecom = [[self objectOrNilForKey:kCibIsRecom fromDictionary:dict] doubleValue];
            self.proPrice = [[self objectOrNilForKey:kCibProPrice fromDictionary:dict] doubleValue];
            self.cityId = [self objectOrNilForKey:kCibCityId fromDictionary:dict];
            self.insTime = [self objectOrNilForKey:kCibInsTime fromDictionary:dict];
            self.vehicleEmission = [self objectOrNilForKey:kCibVehicleEmission fromDictionary:dict];
            self.carCode = [self objectOrNilForKey:kCibCarCode fromDictionary:dict];
            self.carOld = [[self objectOrNilForKey:kCibCarOld fromDictionary:dict] doubleValue];
            NSDateFormatter *formatter1 = [[NSDateFormatter alloc] init];
            [formatter1 setDateFormat:@"yyyy-MM-dd"];
            NSDateFormatter *formatter2 = [[NSDateFormatter alloc] init];
            [formatter2 setDateFormat:@"yyyy年MM月dd日"];
            
            NSString *fno_time = [self objectOrNilForKey:kCibFnoTime fromDictionary:dict];
            if (fno_time.length == 10) {
                fno_time = [formatter2 stringFromDate:[formatter1 dateFromString:fno_time]];
            }
            if (fno_time.length == 0) {
                fno_time = @"无";
            }
            self.fnoTime = fno_time;
            self.cityName = [self objectOrNilForKey:kCibCityName fromDictionary:dict];
            self.transmissionModel = [self objectOrNilForKey:kCibTransmissionModel fromDictionary:dict];
            self.insTime = [self objectOrNilForKey:kCibInsTime fromDictionary:dict];
            self.state = [self objectOrNilForKey:kCibState fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCibCarId fromDictionary:dict] doubleValue];
            self.ownerType = [[self objectOrNilForKey:kCibOwnerType fromDictionary:dict] doubleValue];
            self.proCountry = [self objectOrNilForKey:kCibProCountry fromDictionary:dict];
            self.mtnType = [self objectOrNilForKey:kCibMtnType fromDictionary:dict];
            self.range = [self objectOrNilForKey:kCibRange fromDictionary:dict];
            self.saleCount = [self objectOrNilForKey:kCibSaleCount fromDictionary:dict];
            self.vehicleEmissionStandards = [self objectOrNilForKey:kCibVehicleEmissionStandards fromDictionary:dict];
            self.ves = [self objectOrNilForKey:kCibVes fromDictionary:dict];
            self.checkTime = [self objectOrNilForKey:kCibCheckTime fromDictionary:dict];
            self.carType = [[self objectOrNilForKey:kCibCarType fromDictionary:dict] doubleValue];
            self.carBrand3 = [[self objectOrNilForKey:kCibCarBrand3 fromDictionary:dict] doubleValue];
            self.isNewCar = [[self objectOrNilForKey:kCibIsNewCar fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.isRecom] forKey:kCibIsRecom];
    [mutableDict setValue:[NSNumber numberWithDouble:self.proPrice] forKey:kCibProPrice];
    [mutableDict setValue:self.cityId forKey:kCibCityId];
    [mutableDict setValue:self.insTime forKey:kCibInsTime];
    [mutableDict setValue:self.vehicleEmission forKey:kCibVehicleEmission];
    [mutableDict setValue:self.carCode forKey:kCibCarCode];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carOld] forKey:kCibCarOld];
    [mutableDict setValue:self.fnoTime forKey:kCibFnoTime];
    [mutableDict setValue:self.cityName forKey:kCibCityName];
    [mutableDict setValue:self.transmissionModel forKey:kCibTransmissionModel];
    [mutableDict setValue:self.insTime forKey:kCibInsTime];
    [mutableDict setValue:self.state forKey:kCibState];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCibCarId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.ownerType] forKey:kCibOwnerType];
    [mutableDict setValue:self.proCountry forKey:kCibProCountry];
    [mutableDict setValue:self.mtnType forKey:kCibMtnType];
    [mutableDict setValue:self.range forKey:kCibRange];
    [mutableDict setValue:self.saleCount forKey:kCibSaleCount];
    [mutableDict setValue:self.vehicleEmissionStandards forKey:kCibVehicleEmissionStandards];
    [mutableDict setValue:self.ves forKey:kCibVes];
    [mutableDict setValue:self.checkTime forKey:kCibCheckTime];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carType] forKey:kCibCarType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carBrand3] forKey:kCibCarBrand3];
    [mutableDict setValue:[NSNumber numberWithDouble:self.isNewCar] forKey:kCibIsNewCar];

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

    self.isRecom = [aDecoder decodeDoubleForKey:kCibIsRecom];
    self.proPrice = [aDecoder decodeDoubleForKey:kCibProPrice];
    self.cityId = [aDecoder decodeObjectForKey:kCibCityId];
    self.insTime = [aDecoder decodeObjectForKey:kCibInsTime];
    self.vehicleEmission = [aDecoder decodeObjectForKey:kCibVehicleEmission];
    self.carCode = [aDecoder decodeObjectForKey:kCibCarCode];
    self.carOld = [aDecoder decodeDoubleForKey:kCibCarOld];
    self.fnoTime = [aDecoder decodeObjectForKey:kCibFnoTime];
    self.cityName = [aDecoder decodeObjectForKey:kCibCityName];
    self.transmissionModel = [aDecoder decodeObjectForKey:kCibTransmissionModel];
    self.insTime = [aDecoder decodeObjectForKey:kCibInsTime];
    self.state = [aDecoder decodeObjectForKey:kCibState];
    self.carId = [aDecoder decodeDoubleForKey:kCibCarId];
    self.ownerType = [aDecoder decodeDoubleForKey:kCibOwnerType];
    self.proCountry = [aDecoder decodeObjectForKey:kCibProCountry];
    self.mtnType = [aDecoder decodeObjectForKey:kCibMtnType];
    self.range = [aDecoder decodeObjectForKey:kCibRange];
    self.saleCount = [aDecoder decodeObjectForKey:kCibSaleCount];
    self.vehicleEmissionStandards = [aDecoder decodeObjectForKey:kCibVehicleEmissionStandards];
    self.ves = [aDecoder decodeObjectForKey:kCibVes];
    self.checkTime = [aDecoder decodeObjectForKey:kCibCheckTime];
    self.carType = [aDecoder decodeDoubleForKey:kCibCarType];
    self.carBrand3 = [aDecoder decodeDoubleForKey:kCibCarBrand3];
    self.isNewCar = [aDecoder decodeDoubleForKey:kCibIsNewCar];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_isRecom forKey:kCibIsRecom];
    [aCoder encodeDouble:_proPrice forKey:kCibProPrice];
    [aCoder encodeObject:_cityId forKey:kCibCityId];
    [aCoder encodeObject:_insTime forKey:kCibInsTime];
    [aCoder encodeObject:_vehicleEmission forKey:kCibVehicleEmission];
    [aCoder encodeObject:_carCode forKey:kCibCarCode];
    [aCoder encodeDouble:_carOld forKey:kCibCarOld];
    [aCoder encodeObject:_fnoTime forKey:kCibFnoTime];
    [aCoder encodeObject:_cityName forKey:kCibCityName];
    [aCoder encodeObject:_transmissionModel forKey:kCibTransmissionModel];
    [aCoder encodeObject:_insTime forKey:kCibInsTime];
    [aCoder encodeObject:_state forKey:kCibState];
    [aCoder encodeDouble:_carId forKey:kCibCarId];
    [aCoder encodeDouble:_ownerType forKey:kCibOwnerType];
    [aCoder encodeObject:_proCountry forKey:kCibProCountry];
    [aCoder encodeObject:_mtnType forKey:kCibMtnType];
    [aCoder encodeObject:_range forKey:kCibRange];
    [aCoder encodeObject:_saleCount forKey:kCibSaleCount];
    [aCoder encodeObject:_vehicleEmissionStandards forKey:kCibVehicleEmissionStandards];
    [aCoder encodeObject:_ves forKey:kCibVes];
    [aCoder encodeObject:_checkTime forKey:kCibCheckTime];
    [aCoder encodeDouble:_carType forKey:kCibCarType];
    [aCoder encodeDouble:_carBrand3 forKey:kCibCarBrand3];
    [aCoder encodeDouble:_isNewCar forKey:kCibIsNewCar];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cib *copy = [[Cib alloc] init];
    
    if (copy) {

        copy.isRecom = self.isRecom;
        copy.proPrice = self.proPrice;
        copy.cityId = [self.cityId copyWithZone:zone];
        copy.insTime = [self.insTime copyWithZone:zone];
        copy.vehicleEmission = [self.vehicleEmission copyWithZone:zone];
        copy.carCode = [self.carCode copyWithZone:zone];
        copy.carOld = self.carOld;
        copy.fnoTime = [self.fnoTime copyWithZone:zone];
        copy.cityName = [self.cityName copyWithZone:zone];
        copy.transmissionModel = [self.transmissionModel copyWithZone:zone];
        copy.insTime = [self.insTime copyWithZone:zone];
        copy.state = [self.state copyWithZone:zone];
        copy.carId = self.carId;
        copy.ownerType = self.ownerType;
        copy.proCountry = [self.proCountry copyWithZone:zone];
        copy.mtnType = [self.mtnType copyWithZone:zone];
        copy.range = [self.range copyWithZone:zone];
        copy.saleCount = [self.saleCount copyWithZone:zone];
        copy.vehicleEmissionStandards = [self.vehicleEmissionStandards copyWithZone:zone];
        copy.ves = [self.ves copyWithZone:zone];
        copy.checkTime = [self.checkTime copyWithZone:zone];
        copy.carType = self.carType;
        copy.carBrand3 = self.carBrand3;
        copy.isNewCar = self.isNewCar;
    }
    
    return copy;
}


@end
