//
//  Cbcc.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbcc.h"


NSString *const kCbccHelpPowerType = @"helpPowerType";
NSString *const kCbccFrontSuType = @"frontSuType";
NSString *const kCbccCarId = @"carId";
NSString *const kCbccBodyStructure = @"bodyStructure";
NSString *const kCbccDrivingMode = @"drivingMode";
NSString *const kCbccRearSuType = @"rearSuType";


@interface Cbcc ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbcc

@synthesize helpPowerType = _helpPowerType;
@synthesize frontSuType = _frontSuType;
@synthesize carId = _carId;
@synthesize bodyStructure = _bodyStructure;
@synthesize drivingMode = _drivingMode;
@synthesize rearSuType = _rearSuType;


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
            self.helpPowerType = [self objectOrNilForKey:kCbccHelpPowerType fromDictionary:dict];
            self.frontSuType = [self objectOrNilForKey:kCbccFrontSuType fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbccCarId fromDictionary:dict] doubleValue];
            self.bodyStructure = [self objectOrNilForKey:kCbccBodyStructure fromDictionary:dict];
            self.drivingMode = [self objectOrNilForKey:kCbccDrivingMode fromDictionary:dict];
            self.rearSuType = [self objectOrNilForKey:kCbccRearSuType fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.helpPowerType forKey:kCbccHelpPowerType];
    [mutableDict setValue:self.frontSuType forKey:kCbccFrontSuType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbccCarId];
    [mutableDict setValue:self.bodyStructure forKey:kCbccBodyStructure];
    [mutableDict setValue:self.drivingMode forKey:kCbccDrivingMode];
    [mutableDict setValue:self.rearSuType forKey:kCbccRearSuType];

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

    self.helpPowerType = [aDecoder decodeObjectForKey:kCbccHelpPowerType];
    self.frontSuType = [aDecoder decodeObjectForKey:kCbccFrontSuType];
    self.carId = [aDecoder decodeDoubleForKey:kCbccCarId];
    self.bodyStructure = [aDecoder decodeObjectForKey:kCbccBodyStructure];
    self.drivingMode = [aDecoder decodeObjectForKey:kCbccDrivingMode];
    self.rearSuType = [aDecoder decodeObjectForKey:kCbccRearSuType];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_helpPowerType forKey:kCbccHelpPowerType];
    [aCoder encodeObject:_frontSuType forKey:kCbccFrontSuType];
    [aCoder encodeDouble:_carId forKey:kCbccCarId];
    [aCoder encodeObject:_bodyStructure forKey:kCbccBodyStructure];
    [aCoder encodeObject:_drivingMode forKey:kCbccDrivingMode];
    [aCoder encodeObject:_rearSuType forKey:kCbccRearSuType];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbcc *copy = [[Cbcc alloc] init];
    
    if (copy) {

        copy.helpPowerType = [self.helpPowerType copyWithZone:zone];
        copy.frontSuType = [self.frontSuType copyWithZone:zone];
        copy.carId = self.carId;
        copy.bodyStructure = [self.bodyStructure copyWithZone:zone];
        copy.drivingMode = [self.drivingMode copyWithZone:zone];
        copy.rearSuType = [self.rearSuType copyWithZone:zone];
    }
    
    return copy;
}


@end
