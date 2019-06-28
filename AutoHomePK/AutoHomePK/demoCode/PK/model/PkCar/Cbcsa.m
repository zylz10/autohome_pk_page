//
//  Cbcsa.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbcsa.h"


NSString *const kCbcsaCarLock = @"carLock";
NSString *const kCbcsaRearSideAirbag = @"rearSideAirbag";
NSString *const kCbcsaFrontHeadAirbag = @"frontHeadAirbag";
NSString *const kCbcsaKneeAirbag = @"kneeAirbag";
NSString *const kCbcsaRemoteKey = @"remoteKey";
NSString *const kCbcsaRearHeadAirbag = @"rearHeadAirbag";
NSString *const kCbcsaCarId = @"carId";
NSString *const kCbcsaTpms = @"tpms";
NSString *const kCbcsaRsc = @"rsc";
NSString *const kCbcsaFrontSideAirbag = @"frontSideAirbag";
NSString *const kCbcsaNokeyEntry = @"nokeyEntry";
NSString *const kCbcsaCoDriverAirbag = @"coDriverAirbag";
NSString *const kCbcsaNoSeatbeltWarn = @"noSeatbeltWarn";
NSString *const kCbcsaNokeyStart = @"nokeyStart";
NSString *const kCbcsaEngineElecSec = @"engineElecSec";
NSString *const kCbcsaMainDriverAirbag = @"mainDriverAirbag";
NSString *const kCbcsaIsofix = @"isofix";


@interface Cbcsa ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbcsa

@synthesize carLock = _carLock;
@synthesize rearSideAirbag = _rearSideAirbag;
@synthesize frontHeadAirbag = _frontHeadAirbag;
@synthesize kneeAirbag = _kneeAirbag;
@synthesize remoteKey = _remoteKey;
@synthesize rearHeadAirbag = _rearHeadAirbag;
@synthesize carId = _carId;
@synthesize tpms = _tpms;
@synthesize rsc = _rsc;
@synthesize frontSideAirbag = _frontSideAirbag;
@synthesize nokeyEntry = _nokeyEntry;
@synthesize coDriverAirbag = _coDriverAirbag;
@synthesize noSeatbeltWarn = _noSeatbeltWarn;
@synthesize nokeyStart = _nokeyStart;
@synthesize engineElecSec = _engineElecSec;
@synthesize mainDriverAirbag = _mainDriverAirbag;
@synthesize isofix = _isofix;


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
            self.carLock = [self objectOrNilForKey:kCbcsaCarLock fromDictionary:dict];
            self.rearSideAirbag = [self objectOrNilForKey:kCbcsaRearSideAirbag fromDictionary:dict];
            self.frontHeadAirbag = [self objectOrNilForKey:kCbcsaFrontHeadAirbag fromDictionary:dict];
            self.kneeAirbag = [self objectOrNilForKey:kCbcsaKneeAirbag fromDictionary:dict];
            self.remoteKey = [self objectOrNilForKey:kCbcsaRemoteKey fromDictionary:dict];
            self.rearHeadAirbag = [self objectOrNilForKey:kCbcsaRearHeadAirbag fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbcsaCarId fromDictionary:dict] doubleValue];
            self.tpms = [self objectOrNilForKey:kCbcsaTpms fromDictionary:dict];
            self.rsc = [self objectOrNilForKey:kCbcsaRsc fromDictionary:dict];
            self.frontSideAirbag = [self objectOrNilForKey:kCbcsaFrontSideAirbag fromDictionary:dict];
            self.nokeyEntry = [self objectOrNilForKey:kCbcsaNokeyEntry fromDictionary:dict];
            self.coDriverAirbag = [self objectOrNilForKey:kCbcsaCoDriverAirbag fromDictionary:dict];
            self.noSeatbeltWarn = [self objectOrNilForKey:kCbcsaNoSeatbeltWarn fromDictionary:dict];
            self.nokeyStart = [self objectOrNilForKey:kCbcsaNokeyStart fromDictionary:dict];
            self.engineElecSec = [self objectOrNilForKey:kCbcsaEngineElecSec fromDictionary:dict];
            self.mainDriverAirbag = [self objectOrNilForKey:kCbcsaMainDriverAirbag fromDictionary:dict];
            self.isofix = [self objectOrNilForKey:kCbcsaIsofix fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.carLock forKey:kCbcsaCarLock];
    [mutableDict setValue:self.rearSideAirbag forKey:kCbcsaRearSideAirbag];
    [mutableDict setValue:self.frontHeadAirbag forKey:kCbcsaFrontHeadAirbag];
    [mutableDict setValue:self.kneeAirbag forKey:kCbcsaKneeAirbag];
    [mutableDict setValue:self.remoteKey forKey:kCbcsaRemoteKey];
    [mutableDict setValue:self.rearHeadAirbag forKey:kCbcsaRearHeadAirbag];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbcsaCarId];
    [mutableDict setValue:self.tpms forKey:kCbcsaTpms];
    [mutableDict setValue:self.rsc forKey:kCbcsaRsc];
    [mutableDict setValue:self.frontSideAirbag forKey:kCbcsaFrontSideAirbag];
    [mutableDict setValue:self.nokeyEntry forKey:kCbcsaNokeyEntry];
    [mutableDict setValue:self.coDriverAirbag forKey:kCbcsaCoDriverAirbag];
    [mutableDict setValue:self.noSeatbeltWarn forKey:kCbcsaNoSeatbeltWarn];
    [mutableDict setValue:self.nokeyStart forKey:kCbcsaNokeyStart];
    [mutableDict setValue:self.engineElecSec forKey:kCbcsaEngineElecSec];
    [mutableDict setValue:self.mainDriverAirbag forKey:kCbcsaMainDriverAirbag];
    [mutableDict setValue:self.isofix forKey:kCbcsaIsofix];

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

    self.carLock = [aDecoder decodeObjectForKey:kCbcsaCarLock];
    self.rearSideAirbag = [aDecoder decodeObjectForKey:kCbcsaRearSideAirbag];
    self.frontHeadAirbag = [aDecoder decodeObjectForKey:kCbcsaFrontHeadAirbag];
    self.kneeAirbag = [aDecoder decodeObjectForKey:kCbcsaKneeAirbag];
    self.remoteKey = [aDecoder decodeObjectForKey:kCbcsaRemoteKey];
    self.rearHeadAirbag = [aDecoder decodeObjectForKey:kCbcsaRearHeadAirbag];
    self.carId = [aDecoder decodeDoubleForKey:kCbcsaCarId];
    self.tpms = [aDecoder decodeObjectForKey:kCbcsaTpms];
    self.rsc = [aDecoder decodeObjectForKey:kCbcsaRsc];
    self.frontSideAirbag = [aDecoder decodeObjectForKey:kCbcsaFrontSideAirbag];
    self.nokeyEntry = [aDecoder decodeObjectForKey:kCbcsaNokeyEntry];
    self.coDriverAirbag = [aDecoder decodeObjectForKey:kCbcsaCoDriverAirbag];
    self.noSeatbeltWarn = [aDecoder decodeObjectForKey:kCbcsaNoSeatbeltWarn];
    self.nokeyStart = [aDecoder decodeObjectForKey:kCbcsaNokeyStart];
    self.engineElecSec = [aDecoder decodeObjectForKey:kCbcsaEngineElecSec];
    self.mainDriverAirbag = [aDecoder decodeObjectForKey:kCbcsaMainDriverAirbag];
    self.isofix = [aDecoder decodeObjectForKey:kCbcsaIsofix];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_carLock forKey:kCbcsaCarLock];
    [aCoder encodeObject:_rearSideAirbag forKey:kCbcsaRearSideAirbag];
    [aCoder encodeObject:_frontHeadAirbag forKey:kCbcsaFrontHeadAirbag];
    [aCoder encodeObject:_kneeAirbag forKey:kCbcsaKneeAirbag];
    [aCoder encodeObject:_remoteKey forKey:kCbcsaRemoteKey];
    [aCoder encodeObject:_rearHeadAirbag forKey:kCbcsaRearHeadAirbag];
    [aCoder encodeDouble:_carId forKey:kCbcsaCarId];
    [aCoder encodeObject:_tpms forKey:kCbcsaTpms];
    [aCoder encodeObject:_rsc forKey:kCbcsaRsc];
    [aCoder encodeObject:_frontSideAirbag forKey:kCbcsaFrontSideAirbag];
    [aCoder encodeObject:_nokeyEntry forKey:kCbcsaNokeyEntry];
    [aCoder encodeObject:_coDriverAirbag forKey:kCbcsaCoDriverAirbag];
    [aCoder encodeObject:_noSeatbeltWarn forKey:kCbcsaNoSeatbeltWarn];
    [aCoder encodeObject:_nokeyStart forKey:kCbcsaNokeyStart];
    [aCoder encodeObject:_engineElecSec forKey:kCbcsaEngineElecSec];
    [aCoder encodeObject:_mainDriverAirbag forKey:kCbcsaMainDriverAirbag];
    [aCoder encodeObject:_isofix forKey:kCbcsaIsofix];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbcsa *copy = [[Cbcsa alloc] init];
    
    if (copy) {

        copy.carLock = [self.carLock copyWithZone:zone];
        copy.rearSideAirbag = [self.rearSideAirbag copyWithZone:zone];
        copy.frontHeadAirbag = [self.frontHeadAirbag copyWithZone:zone];
        copy.kneeAirbag = [self.kneeAirbag copyWithZone:zone];
        copy.remoteKey = [self.remoteKey copyWithZone:zone];
        copy.rearHeadAirbag = [self.rearHeadAirbag copyWithZone:zone];
        copy.carId = self.carId;
        copy.tpms = [self.tpms copyWithZone:zone];
        copy.rsc = [self.rsc copyWithZone:zone];
        copy.frontSideAirbag = [self.frontSideAirbag copyWithZone:zone];
        copy.nokeyEntry = [self.nokeyEntry copyWithZone:zone];
        copy.coDriverAirbag = [self.coDriverAirbag copyWithZone:zone];
        copy.noSeatbeltWarn = [self.noSeatbeltWarn copyWithZone:zone];
        copy.nokeyStart = [self.nokeyStart copyWithZone:zone];
        copy.engineElecSec = [self.engineElecSec copyWithZone:zone];
        copy.mainDriverAirbag = [self.mainDriverAirbag copyWithZone:zone];
        copy.isofix = [self.isofix copyWithZone:zone];
    }
    
    return copy;
}


@end
