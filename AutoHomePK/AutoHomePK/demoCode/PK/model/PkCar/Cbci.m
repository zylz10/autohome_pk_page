//
//  Cbci.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbci.h"


NSString *const kCbciAdjSteelElec = @"adjSteelElec";
NSString *const kCbciRevVideo = @"revVideo";
NSString *const kCbciLeaSteer = @"leaSteer";
NSString *const kCbciFrontParkRad = @"frontParkRad";
NSString *const kCbciShiftSteel = @"shiftSteel";
NSString *const kCbciHeatSteel = @"heatSteel";
NSString *const kCbciHud = @"hud";
NSString *const kCbciCruiseCon = @"cruiseCon";
NSString *const kCbciCarId = @"carId";
NSString *const kCbciAdjSteer = @"adjSteer";
NSString *const kCbciRearParkRad = @"rearParkRad";
NSString *const kCbciMultSteel = @"multSteel";
NSString *const kCbciDriComDis = @"driComDis";


@interface Cbci ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbci

@synthesize adjSteelElec = _adjSteelElec;
@synthesize revVideo = _revVideo;
@synthesize leaSteer = _leaSteer;
@synthesize frontParkRad = _frontParkRad;
@synthesize shiftSteel = _shiftSteel;
@synthesize heatSteel = _heatSteel;
@synthesize hud = _hud;
@synthesize cruiseCon = _cruiseCon;
@synthesize carId = _carId;
@synthesize adjSteer = _adjSteer;
@synthesize rearParkRad = _rearParkRad;
@synthesize multSteel = _multSteel;
@synthesize driComDis = _driComDis;


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
            self.adjSteelElec = [self objectOrNilForKey:kCbciAdjSteelElec fromDictionary:dict];
            self.revVideo = [self objectOrNilForKey:kCbciRevVideo fromDictionary:dict];
            self.leaSteer = [self objectOrNilForKey:kCbciLeaSteer fromDictionary:dict];
            self.frontParkRad = [self objectOrNilForKey:kCbciFrontParkRad fromDictionary:dict];
            self.shiftSteel = [self objectOrNilForKey:kCbciShiftSteel fromDictionary:dict];
            self.heatSteel = [self objectOrNilForKey:kCbciHeatSteel fromDictionary:dict];
            self.hud = [self objectOrNilForKey:kCbciHud fromDictionary:dict];
            self.cruiseCon = [self objectOrNilForKey:kCbciCruiseCon fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbciCarId fromDictionary:dict] doubleValue];
            self.adjSteer = [self objectOrNilForKey:kCbciAdjSteer fromDictionary:dict];
            self.rearParkRad = [self objectOrNilForKey:kCbciRearParkRad fromDictionary:dict];
            self.multSteel = [self objectOrNilForKey:kCbciMultSteel fromDictionary:dict];
            self.driComDis = [self objectOrNilForKey:kCbciDriComDis fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.adjSteelElec forKey:kCbciAdjSteelElec];
    [mutableDict setValue:self.revVideo forKey:kCbciRevVideo];
    [mutableDict setValue:self.leaSteer forKey:kCbciLeaSteer];
    [mutableDict setValue:self.frontParkRad forKey:kCbciFrontParkRad];
    [mutableDict setValue:self.shiftSteel forKey:kCbciShiftSteel];
    [mutableDict setValue:self.heatSteel forKey:kCbciHeatSteel];
    [mutableDict setValue:self.hud forKey:kCbciHud];
    [mutableDict setValue:self.cruiseCon forKey:kCbciCruiseCon];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbciCarId];
    [mutableDict setValue:self.adjSteer forKey:kCbciAdjSteer];
    [mutableDict setValue:self.rearParkRad forKey:kCbciRearParkRad];
    [mutableDict setValue:self.multSteel forKey:kCbciMultSteel];
    [mutableDict setValue:self.driComDis forKey:kCbciDriComDis];

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

    self.adjSteelElec = [aDecoder decodeObjectForKey:kCbciAdjSteelElec];
    self.revVideo = [aDecoder decodeObjectForKey:kCbciRevVideo];
    self.leaSteer = [aDecoder decodeObjectForKey:kCbciLeaSteer];
    self.frontParkRad = [aDecoder decodeObjectForKey:kCbciFrontParkRad];
    self.shiftSteel = [aDecoder decodeObjectForKey:kCbciShiftSteel];
    self.heatSteel = [aDecoder decodeObjectForKey:kCbciHeatSteel];
    self.hud = [aDecoder decodeObjectForKey:kCbciHud];
    self.cruiseCon = [aDecoder decodeObjectForKey:kCbciCruiseCon];
    self.carId = [aDecoder decodeDoubleForKey:kCbciCarId];
    self.adjSteer = [aDecoder decodeObjectForKey:kCbciAdjSteer];
    self.rearParkRad = [aDecoder decodeObjectForKey:kCbciRearParkRad];
    self.multSteel = [aDecoder decodeObjectForKey:kCbciMultSteel];
    self.driComDis = [aDecoder decodeObjectForKey:kCbciDriComDis];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_adjSteelElec forKey:kCbciAdjSteelElec];
    [aCoder encodeObject:_revVideo forKey:kCbciRevVideo];
    [aCoder encodeObject:_leaSteer forKey:kCbciLeaSteer];
    [aCoder encodeObject:_frontParkRad forKey:kCbciFrontParkRad];
    [aCoder encodeObject:_shiftSteel forKey:kCbciShiftSteel];
    [aCoder encodeObject:_heatSteel forKey:kCbciHeatSteel];
    [aCoder encodeObject:_hud forKey:kCbciHud];
    [aCoder encodeObject:_cruiseCon forKey:kCbciCruiseCon];
    [aCoder encodeDouble:_carId forKey:kCbciCarId];
    [aCoder encodeObject:_adjSteer forKey:kCbciAdjSteer];
    [aCoder encodeObject:_rearParkRad forKey:kCbciRearParkRad];
    [aCoder encodeObject:_multSteel forKey:kCbciMultSteel];
    [aCoder encodeObject:_driComDis forKey:kCbciDriComDis];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbci *copy = [[Cbci alloc] init];
    
    if (copy) {

        copy.adjSteelElec = [self.adjSteelElec copyWithZone:zone];
        copy.revVideo = [self.revVideo copyWithZone:zone];
        copy.leaSteer = [self.leaSteer copyWithZone:zone];
        copy.frontParkRad = [self.frontParkRad copyWithZone:zone];
        copy.shiftSteel = [self.shiftSteel copyWithZone:zone];
        copy.heatSteel = [self.heatSteel copyWithZone:zone];
        copy.hud = [self.hud copyWithZone:zone];
        copy.cruiseCon = [self.cruiseCon copyWithZone:zone];
        copy.carId = self.carId;
        copy.adjSteer = [self.adjSteer copyWithZone:zone];
        copy.rearParkRad = [self.rearParkRad copyWithZone:zone];
        copy.multSteel = [self.multSteel copyWithZone:zone];
        copy.driComDis = [self.driComDis copyWithZone:zone];
    }
    
    return copy;
}


@end
