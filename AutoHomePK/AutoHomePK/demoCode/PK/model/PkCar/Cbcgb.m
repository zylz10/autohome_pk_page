//
//  Cbcgb.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbcgb.h"


NSString *const kCbcgbCarId = @"carId";
NSString *const kCbcgbGearNum = @"gearNum";
NSString *const kCbcgbGearBoxType = @"gearBoxType";
NSString *const kCbcgbShortName = @"shortName";


@interface Cbcgb ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbcgb

@synthesize carId = _carId;
@synthesize gearNum = _gearNum;
@synthesize gearBoxType = _gearBoxType;
@synthesize shortName = _shortName;


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
            self.carId = [[self objectOrNilForKey:kCbcgbCarId fromDictionary:dict] doubleValue];
            self.gearNum = [self objectOrNilForKey:kCbcgbGearNum fromDictionary:dict];
            self.gearBoxType = [self objectOrNilForKey:kCbcgbGearBoxType fromDictionary:dict];
            self.shortName = [self objectOrNilForKey:kCbcgbShortName fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbcgbCarId];
    [mutableDict setValue:self.gearNum forKey:kCbcgbGearNum];
    [mutableDict setValue:self.gearBoxType forKey:kCbcgbGearBoxType];
    [mutableDict setValue:self.shortName forKey:kCbcgbShortName];

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

    self.carId = [aDecoder decodeDoubleForKey:kCbcgbCarId];
    self.gearNum = [aDecoder decodeObjectForKey:kCbcgbGearNum];
    self.gearBoxType = [aDecoder decodeObjectForKey:kCbcgbGearBoxType];
    self.shortName = [aDecoder decodeObjectForKey:kCbcgbShortName];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_carId forKey:kCbcgbCarId];
    [aCoder encodeObject:_gearNum forKey:kCbcgbGearNum];
    [aCoder encodeObject:_gearBoxType forKey:kCbcgbGearBoxType];
    [aCoder encodeObject:_shortName forKey:kCbcgbShortName];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbcgb *copy = [[Cbcgb alloc] init];
    
    if (copy) {

        copy.carId = self.carId;
        copy.gearNum = [self.gearNum copyWithZone:zone];
        copy.gearBoxType = [self.gearBoxType copyWithZone:zone];
        copy.shortName = [self.shortName copyWithZone:zone];
    }
    
    return copy;
}


@end
