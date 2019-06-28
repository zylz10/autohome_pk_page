//
//  Cbcm.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbcm.h"


NSString *const kCbcmLos = @"los";
NSString *const kCbcmMsys = @"msys";
NSString *const kCbcmGps = @"gps";
NSString *const kCbcmBsc = @"bsc";
NSString *const kCbcmCarId = @"carId";
NSString *const kCbcmCcsc = @"ccsc";
NSString *const kCbcmPower = @"power";
NSString *const kCbcmAudioNum = @"audioNum";
NSString *const kCbcmCtv = @"ctv";
NSString *const kCbcmAudioBrand = @"audioBrand";
NSString *const kCbcmOmi = @"omi";
NSString *const kCbcmCd = @"cd";
NSString *const kCbcmBlcp = @"blcp";


@interface Cbcm ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbcm

@synthesize los = _los;
@synthesize msys = _msys;
@synthesize gps = _gps;
@synthesize bsc = _bsc;
@synthesize carId = _carId;
@synthesize ccsc = _ccsc;
@synthesize power = _power;
@synthesize audioNum = _audioNum;
@synthesize ctv = _ctv;
@synthesize audioBrand = _audioBrand;
@synthesize omi = _omi;
@synthesize cd = _cd;
@synthesize blcp = _blcp;


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
            self.los = [self objectOrNilForKey:kCbcmLos fromDictionary:dict];
            self.msys = [self objectOrNilForKey:kCbcmMsys fromDictionary:dict];
            self.gps = [self objectOrNilForKey:kCbcmGps fromDictionary:dict];
            self.bsc = [self objectOrNilForKey:kCbcmBsc fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbcmCarId fromDictionary:dict] doubleValue];
            self.ccsc = [self objectOrNilForKey:kCbcmCcsc fromDictionary:dict];
            self.power = [self objectOrNilForKey:kCbcmPower fromDictionary:dict];
            self.audioNum = [self objectOrNilForKey:kCbcmAudioNum fromDictionary:dict];
            self.ctv = [self objectOrNilForKey:kCbcmCtv fromDictionary:dict];
            self.audioBrand = [self objectOrNilForKey:kCbcmAudioBrand fromDictionary:dict];
            self.omi = [self objectOrNilForKey:kCbcmOmi fromDictionary:dict];
            self.cd = [self objectOrNilForKey:kCbcmCd fromDictionary:dict];
            self.blcp = [self objectOrNilForKey:kCbcmBlcp fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.los forKey:kCbcmLos];
    [mutableDict setValue:self.msys forKey:kCbcmMsys];
    [mutableDict setValue:self.gps forKey:kCbcmGps];
    [mutableDict setValue:self.bsc forKey:kCbcmBsc];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbcmCarId];
    [mutableDict setValue:self.ccsc forKey:kCbcmCcsc];
    [mutableDict setValue:self.power forKey:kCbcmPower];
    [mutableDict setValue:self.audioNum forKey:kCbcmAudioNum];
    [mutableDict setValue:self.ctv forKey:kCbcmCtv];
    [mutableDict setValue:self.audioBrand forKey:kCbcmAudioBrand];
    [mutableDict setValue:self.omi forKey:kCbcmOmi];
    [mutableDict setValue:self.cd forKey:kCbcmCd];
    [mutableDict setValue:self.blcp forKey:kCbcmBlcp];

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

    self.los = [aDecoder decodeObjectForKey:kCbcmLos];
    self.msys = [aDecoder decodeObjectForKey:kCbcmMsys];
    self.gps = [aDecoder decodeObjectForKey:kCbcmGps];
    self.bsc = [aDecoder decodeObjectForKey:kCbcmBsc];
    self.carId = [aDecoder decodeDoubleForKey:kCbcmCarId];
    self.ccsc = [aDecoder decodeObjectForKey:kCbcmCcsc];
    self.power = [aDecoder decodeObjectForKey:kCbcmPower];
    self.audioNum = [aDecoder decodeObjectForKey:kCbcmAudioNum];
    self.ctv = [aDecoder decodeObjectForKey:kCbcmCtv];
    self.audioBrand = [aDecoder decodeObjectForKey:kCbcmAudioBrand];
    self.omi = [aDecoder decodeObjectForKey:kCbcmOmi];
    self.cd = [aDecoder decodeObjectForKey:kCbcmCd];
    self.blcp = [aDecoder decodeObjectForKey:kCbcmBlcp];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_los forKey:kCbcmLos];
    [aCoder encodeObject:_msys forKey:kCbcmMsys];
    [aCoder encodeObject:_gps forKey:kCbcmGps];
    [aCoder encodeObject:_bsc forKey:kCbcmBsc];
    [aCoder encodeDouble:_carId forKey:kCbcmCarId];
    [aCoder encodeObject:_ccsc forKey:kCbcmCcsc];
    [aCoder encodeObject:_power forKey:kCbcmPower];
    [aCoder encodeObject:_audioNum forKey:kCbcmAudioNum];
    [aCoder encodeObject:_ctv forKey:kCbcmCtv];
    [aCoder encodeObject:_audioBrand forKey:kCbcmAudioBrand];
    [aCoder encodeObject:_omi forKey:kCbcmOmi];
    [aCoder encodeObject:_cd forKey:kCbcmCd];
    [aCoder encodeObject:_blcp forKey:kCbcmBlcp];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbcm *copy = [[Cbcm alloc] init];
    
    if (copy) {

        copy.los = [self.los copyWithZone:zone];
        copy.msys = [self.msys copyWithZone:zone];
        copy.gps = [self.gps copyWithZone:zone];
        copy.bsc = [self.bsc copyWithZone:zone];
        copy.carId = self.carId;
        copy.ccsc = [self.ccsc copyWithZone:zone];
        copy.power = [self.power copyWithZone:zone];
        copy.audioNum = [self.audioNum copyWithZone:zone];
        copy.ctv = [self.ctv copyWithZone:zone];
        copy.audioBrand = [self.audioBrand copyWithZone:zone];
        copy.omi = [self.omi copyWithZone:zone];
        copy.cd = [self.cd copyWithZone:zone];
        copy.blcp = [self.blcp copyWithZone:zone];
    }
    
    return copy;
}


@end
