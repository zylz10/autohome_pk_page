//
//  Cbcel.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbcel.h"


NSString *const kCbcelElecBeTor = @"elecBeTor";
NSString *const kCbcelElecBatteryLife = @"elecBatteryLife";
NSString *const kCbcelElecBePower = @"elecBePower";
NSString *const kCbcelCarId = @"carId";
NSString *const kCbcelElecBatteryCap = @"elecBatteryCap";
NSString *const kCbcelElecFrPower = @"elecFrPower";
NSString *const kCbcelElecFrTor = @"elecFrTor";
NSString *const kCbcelElecSumTor = @"elecSumTor";
NSString *const kCbcelElecSumPower = @"elecSumPower";


@interface Cbcel ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbcel

@synthesize elecBeTor = _elecBeTor;
@synthesize elecBatteryLife = _elecBatteryLife;
@synthesize elecBePower = _elecBePower;
@synthesize carId = _carId;
@synthesize elecBatteryCap = _elecBatteryCap;
@synthesize elecFrPower = _elecFrPower;
@synthesize elecFrTor = _elecFrTor;
@synthesize elecSumTor = _elecSumTor;
@synthesize elecSumPower = _elecSumPower;


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
            self.elecBeTor = [self objectOrNilForKey:kCbcelElecBeTor fromDictionary:dict];
            self.elecBatteryLife = [self objectOrNilForKey:kCbcelElecBatteryLife fromDictionary:dict];
            self.elecBePower = [self objectOrNilForKey:kCbcelElecBePower fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbcelCarId fromDictionary:dict] doubleValue];
            self.elecBatteryCap = [self objectOrNilForKey:kCbcelElecBatteryCap fromDictionary:dict];
            self.elecFrPower = [self objectOrNilForKey:kCbcelElecFrPower fromDictionary:dict];
            self.elecFrTor = [self objectOrNilForKey:kCbcelElecFrTor fromDictionary:dict];
            self.elecSumTor = [self objectOrNilForKey:kCbcelElecSumTor fromDictionary:dict];
            self.elecSumPower = [self objectOrNilForKey:kCbcelElecSumPower fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.elecBeTor forKey:kCbcelElecBeTor];
    [mutableDict setValue:self.elecBatteryLife forKey:kCbcelElecBatteryLife];
    [mutableDict setValue:self.elecBePower forKey:kCbcelElecBePower];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbcelCarId];
    [mutableDict setValue:self.elecBatteryCap forKey:kCbcelElecBatteryCap];
    [mutableDict setValue:self.elecFrPower forKey:kCbcelElecFrPower];
    [mutableDict setValue:self.elecFrTor forKey:kCbcelElecFrTor];
    [mutableDict setValue:self.elecSumTor forKey:kCbcelElecSumTor];
    [mutableDict setValue:self.elecSumPower forKey:kCbcelElecSumPower];

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

    self.elecBeTor = [aDecoder decodeObjectForKey:kCbcelElecBeTor];
    self.elecBatteryLife = [aDecoder decodeObjectForKey:kCbcelElecBatteryLife];
    self.elecBePower = [aDecoder decodeObjectForKey:kCbcelElecBePower];
    self.carId = [aDecoder decodeDoubleForKey:kCbcelCarId];
    self.elecBatteryCap = [aDecoder decodeObjectForKey:kCbcelElecBatteryCap];
    self.elecFrPower = [aDecoder decodeObjectForKey:kCbcelElecFrPower];
    self.elecFrTor = [aDecoder decodeObjectForKey:kCbcelElecFrTor];
    self.elecSumTor = [aDecoder decodeObjectForKey:kCbcelElecSumTor];
    self.elecSumPower = [aDecoder decodeObjectForKey:kCbcelElecSumPower];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_elecBeTor forKey:kCbcelElecBeTor];
    [aCoder encodeObject:_elecBatteryLife forKey:kCbcelElecBatteryLife];
    [aCoder encodeObject:_elecBePower forKey:kCbcelElecBePower];
    [aCoder encodeDouble:_carId forKey:kCbcelCarId];
    [aCoder encodeObject:_elecBatteryCap forKey:kCbcelElecBatteryCap];
    [aCoder encodeObject:_elecFrPower forKey:kCbcelElecFrPower];
    [aCoder encodeObject:_elecFrTor forKey:kCbcelElecFrTor];
    [aCoder encodeObject:_elecSumTor forKey:kCbcelElecSumTor];
    [aCoder encodeObject:_elecSumPower forKey:kCbcelElecSumPower];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbcel *copy = [[Cbcel alloc] init];
    
    if (copy) {

        copy.elecBeTor = [self.elecBeTor copyWithZone:zone];
        copy.elecBatteryLife = [self.elecBatteryLife copyWithZone:zone];
        copy.elecBePower = [self.elecBePower copyWithZone:zone];
        copy.carId = self.carId;
        copy.elecBatteryCap = [self.elecBatteryCap copyWithZone:zone];
        copy.elecFrPower = [self.elecFrPower copyWithZone:zone];
        copy.elecFrTor = [self.elecFrTor copyWithZone:zone];
        copy.elecSumTor = [self.elecSumTor copyWithZone:zone];
        copy.elecSumPower = [self.elecSumPower copyWithZone:zone];
    }
    
    return copy;
}


@end
