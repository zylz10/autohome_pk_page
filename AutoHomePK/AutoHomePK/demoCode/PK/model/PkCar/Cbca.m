//
//  Cbca.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbca.h"


NSString *const kCbcaAirPur = @"airPur";
NSString *const kCbcaIceBox = @"iceBox";
NSString *const kCbcaTemParCon = @"temParCon";
NSString *const kCbcaCarId = @"carId";
NSString *const kCbcaAirConModel = @"airConModel";
NSString *const kCbcaRearOutlet = @"rearOutlet";
NSString *const kCbcaRearAirCon = @"rearAirCon";


@interface Cbca ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbca

@synthesize airPur = _airPur;
@synthesize iceBox = _iceBox;
@synthesize temParCon = _temParCon;
@synthesize carId = _carId;
@synthesize airConModel = _airConModel;
@synthesize rearOutlet = _rearOutlet;
@synthesize rearAirCon = _rearAirCon;


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
            self.airPur = [self objectOrNilForKey:kCbcaAirPur fromDictionary:dict];
            self.iceBox = [self objectOrNilForKey:kCbcaIceBox fromDictionary:dict];
            self.temParCon = [self objectOrNilForKey:kCbcaTemParCon fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbcaCarId fromDictionary:dict] doubleValue];
            self.airConModel = [self objectOrNilForKey:kCbcaAirConModel fromDictionary:dict];
            self.rearOutlet = [self objectOrNilForKey:kCbcaRearOutlet fromDictionary:dict];
            self.rearAirCon = [self objectOrNilForKey:kCbcaRearAirCon fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.airPur forKey:kCbcaAirPur];
    [mutableDict setValue:self.iceBox forKey:kCbcaIceBox];
    [mutableDict setValue:self.temParCon forKey:kCbcaTemParCon];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbcaCarId];
    [mutableDict setValue:self.airConModel forKey:kCbcaAirConModel];
    [mutableDict setValue:self.rearOutlet forKey:kCbcaRearOutlet];
    [mutableDict setValue:self.rearAirCon forKey:kCbcaRearAirCon];

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

    self.airPur = [aDecoder decodeObjectForKey:kCbcaAirPur];
    self.iceBox = [aDecoder decodeObjectForKey:kCbcaIceBox];
    self.temParCon = [aDecoder decodeObjectForKey:kCbcaTemParCon];
    self.carId = [aDecoder decodeDoubleForKey:kCbcaCarId];
    self.airConModel = [aDecoder decodeObjectForKey:kCbcaAirConModel];
    self.rearOutlet = [aDecoder decodeObjectForKey:kCbcaRearOutlet];
    self.rearAirCon = [aDecoder decodeObjectForKey:kCbcaRearAirCon];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_airPur forKey:kCbcaAirPur];
    [aCoder encodeObject:_iceBox forKey:kCbcaIceBox];
    [aCoder encodeObject:_temParCon forKey:kCbcaTemParCon];
    [aCoder encodeDouble:_carId forKey:kCbcaCarId];
    [aCoder encodeObject:_airConModel forKey:kCbcaAirConModel];
    [aCoder encodeObject:_rearOutlet forKey:kCbcaRearOutlet];
    [aCoder encodeObject:_rearAirCon forKey:kCbcaRearAirCon];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbca *copy = [[Cbca alloc] init];
    
    if (copy) {

        copy.airPur = [self.airPur copyWithZone:zone];
        copy.iceBox = [self.iceBox copyWithZone:zone];
        copy.temParCon = [self.temParCon copyWithZone:zone];
        copy.carId = self.carId;
        copy.airConModel = [self.airConModel copyWithZone:zone];
        copy.rearOutlet = [self.rearOutlet copyWithZone:zone];
        copy.rearAirCon = [self.rearAirCon copyWithZone:zone];
    }
    
    return copy;
}


@end
