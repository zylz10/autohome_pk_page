//
//  Cbcl.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbcl.h"


NSString *const kCbclDayRun = @"dayRun";
NSString *const kCbclHlWash = @"hlWash";
NSString *const kCbclHid = @"hid";
NSString *const kCbclAutoHl = @"autoHl";
NSString *const kCbclLed = @"led";
NSString *const kCbclFrontFog = @"frontFog";
NSString *const kCbclAirLight = @"airLight";
NSString *const kCbclCarId = @"carId";
NSString *const kCbclSteerAux = @"steerAux";
NSString *const kCbclSteerHl = @"steerHl";
NSString *const kCbclHlAdj = @"hlAdj";


@interface Cbcl ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbcl

@synthesize dayRun = _dayRun;
@synthesize hlWash = _hlWash;
@synthesize hid = _hid;
@synthesize autoHl = _autoHl;
@synthesize led = _led;
@synthesize frontFog = _frontFog;
@synthesize airLight = _airLight;
@synthesize carId = _carId;
@synthesize steerAux = _steerAux;
@synthesize steerHl = _steerHl;
@synthesize hlAdj = _hlAdj;


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
            self.dayRun = [self objectOrNilForKey:kCbclDayRun fromDictionary:dict];
            self.hlWash = [self objectOrNilForKey:kCbclHlWash fromDictionary:dict];
            self.hid = [self objectOrNilForKey:kCbclHid fromDictionary:dict];
            self.autoHl = [self objectOrNilForKey:kCbclAutoHl fromDictionary:dict];
            self.led = [self objectOrNilForKey:kCbclLed fromDictionary:dict];
            self.frontFog = [self objectOrNilForKey:kCbclFrontFog fromDictionary:dict];
            self.airLight = [self objectOrNilForKey:kCbclAirLight fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbclCarId fromDictionary:dict] doubleValue];
            self.steerAux = [self objectOrNilForKey:kCbclSteerAux fromDictionary:dict];
            self.steerHl = [self objectOrNilForKey:kCbclSteerHl fromDictionary:dict];
            self.hlAdj = [self objectOrNilForKey:kCbclHlAdj fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.dayRun forKey:kCbclDayRun];
    [mutableDict setValue:self.hlWash forKey:kCbclHlWash];
    [mutableDict setValue:self.hid forKey:kCbclHid];
    [mutableDict setValue:self.autoHl forKey:kCbclAutoHl];
    [mutableDict setValue:self.led forKey:kCbclLed];
    [mutableDict setValue:self.frontFog forKey:kCbclFrontFog];
    [mutableDict setValue:self.airLight forKey:kCbclAirLight];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbclCarId];
    [mutableDict setValue:self.steerAux forKey:kCbclSteerAux];
    [mutableDict setValue:self.steerHl forKey:kCbclSteerHl];
    [mutableDict setValue:self.hlAdj forKey:kCbclHlAdj];

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

    self.dayRun = [aDecoder decodeObjectForKey:kCbclDayRun];
    self.hlWash = [aDecoder decodeObjectForKey:kCbclHlWash];
    self.hid = [aDecoder decodeObjectForKey:kCbclHid];
    self.autoHl = [aDecoder decodeObjectForKey:kCbclAutoHl];
    self.led = [aDecoder decodeObjectForKey:kCbclLed];
    self.frontFog = [aDecoder decodeObjectForKey:kCbclFrontFog];
    self.airLight = [aDecoder decodeObjectForKey:kCbclAirLight];
    self.carId = [aDecoder decodeDoubleForKey:kCbclCarId];
    self.steerAux = [aDecoder decodeObjectForKey:kCbclSteerAux];
    self.steerHl = [aDecoder decodeObjectForKey:kCbclSteerHl];
    self.hlAdj = [aDecoder decodeObjectForKey:kCbclHlAdj];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_dayRun forKey:kCbclDayRun];
    [aCoder encodeObject:_hlWash forKey:kCbclHlWash];
    [aCoder encodeObject:_hid forKey:kCbclHid];
    [aCoder encodeObject:_autoHl forKey:kCbclAutoHl];
    [aCoder encodeObject:_led forKey:kCbclLed];
    [aCoder encodeObject:_frontFog forKey:kCbclFrontFog];
    [aCoder encodeObject:_airLight forKey:kCbclAirLight];
    [aCoder encodeDouble:_carId forKey:kCbclCarId];
    [aCoder encodeObject:_steerAux forKey:kCbclSteerAux];
    [aCoder encodeObject:_steerHl forKey:kCbclSteerHl];
    [aCoder encodeObject:_hlAdj forKey:kCbclHlAdj];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbcl *copy = [[Cbcl alloc] init];
    
    if (copy) {

        copy.dayRun = [self.dayRun copyWithZone:zone];
        copy.hlWash = [self.hlWash copyWithZone:zone];
        copy.hid = [self.hid copyWithZone:zone];
        copy.autoHl = [self.autoHl copyWithZone:zone];
        copy.led = [self.led copyWithZone:zone];
        copy.frontFog = [self.frontFog copyWithZone:zone];
        copy.airLight = [self.airLight copyWithZone:zone];
        copy.carId = self.carId;
        copy.steerAux = [self.steerAux copyWithZone:zone];
        copy.steerHl = [self.steerHl copyWithZone:zone];
        copy.hlAdj = [self.hlAdj copyWithZone:zone];
    }
    
    return copy;
}


@end
