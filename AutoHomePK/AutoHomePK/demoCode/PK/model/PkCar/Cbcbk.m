//
//  Cbcbk.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbcbk.h"


NSString *const kCbcbkSpareTireType = @"spareTireType";
NSString *const kCbcbkRearTireType = @"rearTireType";
NSString *const kCbcbkRearBrakeType = @"rearBrakeType";
NSString *const kCbcbkCarId = @"carId";
NSString *const kCbcbkFrontBrakeType = @"frontBrakeType";
NSString *const kCbcbkParkBrakeType = @"parkBrakeType";
NSString *const kCbcbkFrontTireType = @"frontTireType";


@interface Cbcbk ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbcbk

@synthesize spareTireType = _spareTireType;
@synthesize rearTireType = _rearTireType;
@synthesize rearBrakeType = _rearBrakeType;
@synthesize carId = _carId;
@synthesize frontBrakeType = _frontBrakeType;
@synthesize parkBrakeType = _parkBrakeType;
@synthesize frontTireType = _frontTireType;


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
            self.spareTireType = [self objectOrNilForKey:kCbcbkSpareTireType fromDictionary:dict];
            self.rearTireType = [self objectOrNilForKey:kCbcbkRearTireType fromDictionary:dict];
            self.rearBrakeType = [self objectOrNilForKey:kCbcbkRearBrakeType fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbcbkCarId fromDictionary:dict] doubleValue];
            self.frontBrakeType = [self objectOrNilForKey:kCbcbkFrontBrakeType fromDictionary:dict];
            self.parkBrakeType = [self objectOrNilForKey:kCbcbkParkBrakeType fromDictionary:dict];
            self.frontTireType = [self objectOrNilForKey:kCbcbkFrontTireType fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.spareTireType forKey:kCbcbkSpareTireType];
    [mutableDict setValue:self.rearTireType forKey:kCbcbkRearTireType];
    [mutableDict setValue:self.rearBrakeType forKey:kCbcbkRearBrakeType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbcbkCarId];
    [mutableDict setValue:self.frontBrakeType forKey:kCbcbkFrontBrakeType];
    [mutableDict setValue:self.parkBrakeType forKey:kCbcbkParkBrakeType];
    [mutableDict setValue:self.frontTireType forKey:kCbcbkFrontTireType];

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

    self.spareTireType = [aDecoder decodeObjectForKey:kCbcbkSpareTireType];
    self.rearTireType = [aDecoder decodeObjectForKey:kCbcbkRearTireType];
    self.rearBrakeType = [aDecoder decodeObjectForKey:kCbcbkRearBrakeType];
    self.carId = [aDecoder decodeDoubleForKey:kCbcbkCarId];
    self.frontBrakeType = [aDecoder decodeObjectForKey:kCbcbkFrontBrakeType];
    self.parkBrakeType = [aDecoder decodeObjectForKey:kCbcbkParkBrakeType];
    self.frontTireType = [aDecoder decodeObjectForKey:kCbcbkFrontTireType];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_spareTireType forKey:kCbcbkSpareTireType];
    [aCoder encodeObject:_rearTireType forKey:kCbcbkRearTireType];
    [aCoder encodeObject:_rearBrakeType forKey:kCbcbkRearBrakeType];
    [aCoder encodeDouble:_carId forKey:kCbcbkCarId];
    [aCoder encodeObject:_frontBrakeType forKey:kCbcbkFrontBrakeType];
    [aCoder encodeObject:_parkBrakeType forKey:kCbcbkParkBrakeType];
    [aCoder encodeObject:_frontTireType forKey:kCbcbkFrontTireType];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbcbk *copy = [[Cbcbk alloc] init];
    
    if (copy) {

        copy.spareTireType = [self.spareTireType copyWithZone:zone];
        copy.rearTireType = [self.rearTireType copyWithZone:zone];
        copy.rearBrakeType = [self.rearBrakeType copyWithZone:zone];
        copy.carId = self.carId;
        copy.frontBrakeType = [self.frontBrakeType copyWithZone:zone];
        copy.parkBrakeType = [self.parkBrakeType copyWithZone:zone];
        copy.frontTireType = [self.frontTireType copyWithZone:zone];
    }
    
    return copy;
}


@end
