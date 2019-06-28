//
//  Cbcop.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbcop.h"


NSString *const kCbcopEbd = @"ebd";
NSString *const kCbcopBrakeAssist = @"brakeAssist";
NSString *const kCbcopVariSteerRatio = @"variSteerRatio";
NSString *const kCbcopAirSuspen = @"airSuspen";
NSString *const kCbcopTracCon = @"tracCon";
NSString *const kCbcopSteepDrop = @"steepDrop";
NSString *const kCbcopFrontAxleLimit = @"frontAxleLimit";
NSString *const kCbcopAutoPark = @"autoPark";
NSString *const kCbcopVariSuspen = @"variSuspen";
NSString *const kCbcopCarId = @"carId";
NSString *const kCbcopHsAssistCon = @"hsAssistCon";
NSString *const kCbcopMidAxleLimit = @"midAxleLimit";
NSString *const kCbcopRearAxleLimit = @"rearAxleLimit";
NSString *const kCbcopStabCon = @"stabCon";
NSString *const kCbcopAbs = @"abs";


@interface Cbcop ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbcop

@synthesize ebd = _ebd;
@synthesize brakeAssist = _brakeAssist;
@synthesize variSteerRatio = _variSteerRatio;
@synthesize airSuspen = _airSuspen;
@synthesize tracCon = _tracCon;
@synthesize steepDrop = _steepDrop;
@synthesize frontAxleLimit = _frontAxleLimit;
@synthesize autoPark = _autoPark;
@synthesize variSuspen = _variSuspen;
@synthesize carId = _carId;
@synthesize hsAssistCon = _hsAssistCon;
@synthesize midAxleLimit = _midAxleLimit;
@synthesize rearAxleLimit = _rearAxleLimit;
@synthesize stabCon = _stabCon;
@synthesize abs = _abs;


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
            self.ebd = [self objectOrNilForKey:kCbcopEbd fromDictionary:dict];
            self.brakeAssist = [self objectOrNilForKey:kCbcopBrakeAssist fromDictionary:dict];
            self.variSteerRatio = [self objectOrNilForKey:kCbcopVariSteerRatio fromDictionary:dict];
            self.airSuspen = [self objectOrNilForKey:kCbcopAirSuspen fromDictionary:dict];
            self.tracCon = [self objectOrNilForKey:kCbcopTracCon fromDictionary:dict];
            self.steepDrop = [self objectOrNilForKey:kCbcopSteepDrop fromDictionary:dict];
            self.frontAxleLimit = [self objectOrNilForKey:kCbcopFrontAxleLimit fromDictionary:dict];
            self.autoPark = [self objectOrNilForKey:kCbcopAutoPark fromDictionary:dict];
            self.variSuspen = [self objectOrNilForKey:kCbcopVariSuspen fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbcopCarId fromDictionary:dict] doubleValue];
            self.hsAssistCon = [self objectOrNilForKey:kCbcopHsAssistCon fromDictionary:dict];
            self.midAxleLimit = [self objectOrNilForKey:kCbcopMidAxleLimit fromDictionary:dict];
            self.rearAxleLimit = [self objectOrNilForKey:kCbcopRearAxleLimit fromDictionary:dict];
            self.stabCon = [self objectOrNilForKey:kCbcopStabCon fromDictionary:dict];
            self.abs = [self objectOrNilForKey:kCbcopAbs fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.ebd forKey:kCbcopEbd];
    [mutableDict setValue:self.brakeAssist forKey:kCbcopBrakeAssist];
    [mutableDict setValue:self.variSteerRatio forKey:kCbcopVariSteerRatio];
    [mutableDict setValue:self.airSuspen forKey:kCbcopAirSuspen];
    [mutableDict setValue:self.tracCon forKey:kCbcopTracCon];
    [mutableDict setValue:self.steepDrop forKey:kCbcopSteepDrop];
    [mutableDict setValue:self.frontAxleLimit forKey:kCbcopFrontAxleLimit];
    [mutableDict setValue:self.autoPark forKey:kCbcopAutoPark];
    [mutableDict setValue:self.variSuspen forKey:kCbcopVariSuspen];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbcopCarId];
    [mutableDict setValue:self.hsAssistCon forKey:kCbcopHsAssistCon];
    [mutableDict setValue:self.midAxleLimit forKey:kCbcopMidAxleLimit];
    [mutableDict setValue:self.rearAxleLimit forKey:kCbcopRearAxleLimit];
    [mutableDict setValue:self.stabCon forKey:kCbcopStabCon];
    [mutableDict setValue:self.abs forKey:kCbcopAbs];

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

    self.ebd = [aDecoder decodeObjectForKey:kCbcopEbd];
    self.brakeAssist = [aDecoder decodeObjectForKey:kCbcopBrakeAssist];
    self.variSteerRatio = [aDecoder decodeObjectForKey:kCbcopVariSteerRatio];
    self.airSuspen = [aDecoder decodeObjectForKey:kCbcopAirSuspen];
    self.tracCon = [aDecoder decodeObjectForKey:kCbcopTracCon];
    self.steepDrop = [aDecoder decodeObjectForKey:kCbcopSteepDrop];
    self.frontAxleLimit = [aDecoder decodeObjectForKey:kCbcopFrontAxleLimit];
    self.autoPark = [aDecoder decodeObjectForKey:kCbcopAutoPark];
    self.variSuspen = [aDecoder decodeObjectForKey:kCbcopVariSuspen];
    self.carId = [aDecoder decodeDoubleForKey:kCbcopCarId];
    self.hsAssistCon = [aDecoder decodeObjectForKey:kCbcopHsAssistCon];
    self.midAxleLimit = [aDecoder decodeObjectForKey:kCbcopMidAxleLimit];
    self.rearAxleLimit = [aDecoder decodeObjectForKey:kCbcopRearAxleLimit];
    self.stabCon = [aDecoder decodeObjectForKey:kCbcopStabCon];
    self.abs = [aDecoder decodeObjectForKey:kCbcopAbs];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_ebd forKey:kCbcopEbd];
    [aCoder encodeObject:_brakeAssist forKey:kCbcopBrakeAssist];
    [aCoder encodeObject:_variSteerRatio forKey:kCbcopVariSteerRatio];
    [aCoder encodeObject:_airSuspen forKey:kCbcopAirSuspen];
    [aCoder encodeObject:_tracCon forKey:kCbcopTracCon];
    [aCoder encodeObject:_steepDrop forKey:kCbcopSteepDrop];
    [aCoder encodeObject:_frontAxleLimit forKey:kCbcopFrontAxleLimit];
    [aCoder encodeObject:_autoPark forKey:kCbcopAutoPark];
    [aCoder encodeObject:_variSuspen forKey:kCbcopVariSuspen];
    [aCoder encodeDouble:_carId forKey:kCbcopCarId];
    [aCoder encodeObject:_hsAssistCon forKey:kCbcopHsAssistCon];
    [aCoder encodeObject:_midAxleLimit forKey:kCbcopMidAxleLimit];
    [aCoder encodeObject:_rearAxleLimit forKey:kCbcopRearAxleLimit];
    [aCoder encodeObject:_stabCon forKey:kCbcopStabCon];
    [aCoder encodeObject:_abs forKey:kCbcopAbs];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbcop *copy = [[Cbcop alloc] init];
    
    if (copy) {

        copy.ebd = [self.ebd copyWithZone:zone];
        copy.brakeAssist = [self.brakeAssist copyWithZone:zone];
        copy.variSteerRatio = [self.variSteerRatio copyWithZone:zone];
        copy.airSuspen = [self.airSuspen copyWithZone:zone];
        copy.tracCon = [self.tracCon copyWithZone:zone];
        copy.steepDrop = [self.steepDrop copyWithZone:zone];
        copy.frontAxleLimit = [self.frontAxleLimit copyWithZone:zone];
        copy.autoPark = [self.autoPark copyWithZone:zone];
        copy.variSuspen = [self.variSuspen copyWithZone:zone];
        copy.carId = self.carId;
        copy.hsAssistCon = [self.hsAssistCon copyWithZone:zone];
        copy.midAxleLimit = [self.midAxleLimit copyWithZone:zone];
        copy.rearAxleLimit = [self.rearAxleLimit copyWithZone:zone];
        copy.stabCon = [self.stabCon copyWithZone:zone];
        copy.abs = [self.abs copyWithZone:zone];
    }
    
    return copy;
}


@end
