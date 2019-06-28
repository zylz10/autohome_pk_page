//
//  Cbcse.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbcse.h"


NSString *const kCbcseRearHeat = @"rearHeat";
NSString *const kCbcseElecMemory = @"elecMemory";
NSString *const kCbcseSport = @"sport";
NSString *const kCbcseLea = @"lea";
NSString *const kCbcseAuxElecAdj = @"auxElecAdj";
NSString *const kCbcseFrontVent = @"frontVent";
NSString *const kCbcseRearCentRail = @"rearCentRail";
NSString *const kCbcseSecMovAdj = @"secMovAdj";
NSString *const kCbcseMainElecAdj = @"mainElecAdj";
NSString *const kCbcseFrontMass = @"frontMass";
NSString *const kCbcseRearMass = @"rearMass";
NSString *const kCbcseCarId = @"carId";
NSString *const kCbcseLumAdj = @"lumAdj";
NSString *const kCbcseHeiAdj = @"heiAdj";
NSString *const kCbcseRearRack = @"rearRack";
NSString *const kCbcseShoAdj = @"shoAdj";
NSString *const kCbcseThirdRow = @"thirdRow";
NSString *const kCbcseRearVent = @"rearVent";
NSString *const kCbcseRearRecWay = @"rearRecWay";
NSString *const kCbcseFrontHeat = @"frontHeat";
NSString *const kCbcseSecBackAngAdj = @"secBackAngAdj";
NSString *const kCbcseFrontCentRail = @"frontCentRail";
NSString *const kCbcseRearElecAdj = @"rearElecAdj";


@interface Cbcse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbcse

@synthesize rearHeat = _rearHeat;
@synthesize elecMemory = _elecMemory;
@synthesize sport = _sport;
@synthesize lea = _lea;
@synthesize auxElecAdj = _auxElecAdj;
@synthesize frontVent = _frontVent;
@synthesize rearCentRail = _rearCentRail;
@synthesize secMovAdj = _secMovAdj;
@synthesize mainElecAdj = _mainElecAdj;
@synthesize frontMass = _frontMass;
@synthesize rearMass = _rearMass;
@synthesize carId = _carId;
@synthesize lumAdj = _lumAdj;
@synthesize heiAdj = _heiAdj;
@synthesize rearRack = _rearRack;
@synthesize shoAdj = _shoAdj;
@synthesize thirdRow = _thirdRow;
@synthesize rearVent = _rearVent;
@synthesize rearRecWay = _rearRecWay;
@synthesize frontHeat = _frontHeat;
@synthesize secBackAngAdj = _secBackAngAdj;
@synthesize frontCentRail = _frontCentRail;
@synthesize rearElecAdj = _rearElecAdj;


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
            self.rearHeat = [self objectOrNilForKey:kCbcseRearHeat fromDictionary:dict];
            self.elecMemory = [self objectOrNilForKey:kCbcseElecMemory fromDictionary:dict];
            self.sport = [self objectOrNilForKey:kCbcseSport fromDictionary:dict];
            self.lea = [self objectOrNilForKey:kCbcseLea fromDictionary:dict];
            self.auxElecAdj = [self objectOrNilForKey:kCbcseAuxElecAdj fromDictionary:dict];
            self.frontVent = [self objectOrNilForKey:kCbcseFrontVent fromDictionary:dict];
            self.rearCentRail = [self objectOrNilForKey:kCbcseRearCentRail fromDictionary:dict];
            self.secMovAdj = [self objectOrNilForKey:kCbcseSecMovAdj fromDictionary:dict];
            self.mainElecAdj = [self objectOrNilForKey:kCbcseMainElecAdj fromDictionary:dict];
            self.frontMass = [self objectOrNilForKey:kCbcseFrontMass fromDictionary:dict];
            self.rearMass = [self objectOrNilForKey:kCbcseRearMass fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbcseCarId fromDictionary:dict] doubleValue];
            self.lumAdj = [self objectOrNilForKey:kCbcseLumAdj fromDictionary:dict];
            self.heiAdj = [self objectOrNilForKey:kCbcseHeiAdj fromDictionary:dict];
            self.rearRack = [self objectOrNilForKey:kCbcseRearRack fromDictionary:dict];
            self.shoAdj = [self objectOrNilForKey:kCbcseShoAdj fromDictionary:dict];
            self.thirdRow = [self objectOrNilForKey:kCbcseThirdRow fromDictionary:dict];
            self.rearVent = [self objectOrNilForKey:kCbcseRearVent fromDictionary:dict];
            self.rearRecWay = [self objectOrNilForKey:kCbcseRearRecWay fromDictionary:dict];
            self.frontHeat = [self objectOrNilForKey:kCbcseFrontHeat fromDictionary:dict];
            self.secBackAngAdj = [self objectOrNilForKey:kCbcseSecBackAngAdj fromDictionary:dict];
            self.frontCentRail = [self objectOrNilForKey:kCbcseFrontCentRail fromDictionary:dict];
            self.rearElecAdj = [self objectOrNilForKey:kCbcseRearElecAdj fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.rearHeat forKey:kCbcseRearHeat];
    [mutableDict setValue:self.elecMemory forKey:kCbcseElecMemory];
    [mutableDict setValue:self.sport forKey:kCbcseSport];
    [mutableDict setValue:self.lea forKey:kCbcseLea];
    [mutableDict setValue:self.auxElecAdj forKey:kCbcseAuxElecAdj];
    [mutableDict setValue:self.frontVent forKey:kCbcseFrontVent];
    [mutableDict setValue:self.rearCentRail forKey:kCbcseRearCentRail];
    [mutableDict setValue:self.secMovAdj forKey:kCbcseSecMovAdj];
    [mutableDict setValue:self.mainElecAdj forKey:kCbcseMainElecAdj];
    [mutableDict setValue:self.frontMass forKey:kCbcseFrontMass];
    [mutableDict setValue:self.rearMass forKey:kCbcseRearMass];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbcseCarId];
    [mutableDict setValue:self.lumAdj forKey:kCbcseLumAdj];
    [mutableDict setValue:self.heiAdj forKey:kCbcseHeiAdj];
    [mutableDict setValue:self.rearRack forKey:kCbcseRearRack];
    [mutableDict setValue:self.shoAdj forKey:kCbcseShoAdj];
    [mutableDict setValue:self.thirdRow forKey:kCbcseThirdRow];
    [mutableDict setValue:self.rearVent forKey:kCbcseRearVent];
    [mutableDict setValue:self.rearRecWay forKey:kCbcseRearRecWay];
    [mutableDict setValue:self.frontHeat forKey:kCbcseFrontHeat];
    [mutableDict setValue:self.secBackAngAdj forKey:kCbcseSecBackAngAdj];
    [mutableDict setValue:self.frontCentRail forKey:kCbcseFrontCentRail];
    [mutableDict setValue:self.rearElecAdj forKey:kCbcseRearElecAdj];

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

    self.rearHeat = [aDecoder decodeObjectForKey:kCbcseRearHeat];
    self.elecMemory = [aDecoder decodeObjectForKey:kCbcseElecMemory];
    self.sport = [aDecoder decodeObjectForKey:kCbcseSport];
    self.lea = [aDecoder decodeObjectForKey:kCbcseLea];
    self.auxElecAdj = [aDecoder decodeObjectForKey:kCbcseAuxElecAdj];
    self.frontVent = [aDecoder decodeObjectForKey:kCbcseFrontVent];
    self.rearCentRail = [aDecoder decodeObjectForKey:kCbcseRearCentRail];
    self.secMovAdj = [aDecoder decodeObjectForKey:kCbcseSecMovAdj];
    self.mainElecAdj = [aDecoder decodeObjectForKey:kCbcseMainElecAdj];
    self.frontMass = [aDecoder decodeObjectForKey:kCbcseFrontMass];
    self.rearMass = [aDecoder decodeObjectForKey:kCbcseRearMass];
    self.carId = [aDecoder decodeDoubleForKey:kCbcseCarId];
    self.lumAdj = [aDecoder decodeObjectForKey:kCbcseLumAdj];
    self.heiAdj = [aDecoder decodeObjectForKey:kCbcseHeiAdj];
    self.rearRack = [aDecoder decodeObjectForKey:kCbcseRearRack];
    self.shoAdj = [aDecoder decodeObjectForKey:kCbcseShoAdj];
    self.thirdRow = [aDecoder decodeObjectForKey:kCbcseThirdRow];
    self.rearVent = [aDecoder decodeObjectForKey:kCbcseRearVent];
    self.rearRecWay = [aDecoder decodeObjectForKey:kCbcseRearRecWay];
    self.frontHeat = [aDecoder decodeObjectForKey:kCbcseFrontHeat];
    self.secBackAngAdj = [aDecoder decodeObjectForKey:kCbcseSecBackAngAdj];
    self.frontCentRail = [aDecoder decodeObjectForKey:kCbcseFrontCentRail];
    self.rearElecAdj = [aDecoder decodeObjectForKey:kCbcseRearElecAdj];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_rearHeat forKey:kCbcseRearHeat];
    [aCoder encodeObject:_elecMemory forKey:kCbcseElecMemory];
    [aCoder encodeObject:_sport forKey:kCbcseSport];
    [aCoder encodeObject:_lea forKey:kCbcseLea];
    [aCoder encodeObject:_auxElecAdj forKey:kCbcseAuxElecAdj];
    [aCoder encodeObject:_frontVent forKey:kCbcseFrontVent];
    [aCoder encodeObject:_rearCentRail forKey:kCbcseRearCentRail];
    [aCoder encodeObject:_secMovAdj forKey:kCbcseSecMovAdj];
    [aCoder encodeObject:_mainElecAdj forKey:kCbcseMainElecAdj];
    [aCoder encodeObject:_frontMass forKey:kCbcseFrontMass];
    [aCoder encodeObject:_rearMass forKey:kCbcseRearMass];
    [aCoder encodeDouble:_carId forKey:kCbcseCarId];
    [aCoder encodeObject:_lumAdj forKey:kCbcseLumAdj];
    [aCoder encodeObject:_heiAdj forKey:kCbcseHeiAdj];
    [aCoder encodeObject:_rearRack forKey:kCbcseRearRack];
    [aCoder encodeObject:_shoAdj forKey:kCbcseShoAdj];
    [aCoder encodeObject:_thirdRow forKey:kCbcseThirdRow];
    [aCoder encodeObject:_rearVent forKey:kCbcseRearVent];
    [aCoder encodeObject:_rearRecWay forKey:kCbcseRearRecWay];
    [aCoder encodeObject:_frontHeat forKey:kCbcseFrontHeat];
    [aCoder encodeObject:_secBackAngAdj forKey:kCbcseSecBackAngAdj];
    [aCoder encodeObject:_frontCentRail forKey:kCbcseFrontCentRail];
    [aCoder encodeObject:_rearElecAdj forKey:kCbcseRearElecAdj];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbcse *copy = [[Cbcse alloc] init];
    
    if (copy) {

        copy.rearHeat = [self.rearHeat copyWithZone:zone];
        copy.elecMemory = [self.elecMemory copyWithZone:zone];
        copy.sport = [self.sport copyWithZone:zone];
        copy.lea = [self.lea copyWithZone:zone];
        copy.auxElecAdj = [self.auxElecAdj copyWithZone:zone];
        copy.frontVent = [self.frontVent copyWithZone:zone];
        copy.rearCentRail = [self.rearCentRail copyWithZone:zone];
        copy.secMovAdj = [self.secMovAdj copyWithZone:zone];
        copy.mainElecAdj = [self.mainElecAdj copyWithZone:zone];
        copy.frontMass = [self.frontMass copyWithZone:zone];
        copy.rearMass = [self.rearMass copyWithZone:zone];
        copy.carId = self.carId;
        copy.lumAdj = [self.lumAdj copyWithZone:zone];
        copy.heiAdj = [self.heiAdj copyWithZone:zone];
        copy.rearRack = [self.rearRack copyWithZone:zone];
        copy.shoAdj = [self.shoAdj copyWithZone:zone];
        copy.thirdRow = [self.thirdRow copyWithZone:zone];
        copy.rearVent = [self.rearVent copyWithZone:zone];
        copy.rearRecWay = [self.rearRecWay copyWithZone:zone];
        copy.frontHeat = [self.frontHeat copyWithZone:zone];
        copy.secBackAngAdj = [self.secBackAngAdj copyWithZone:zone];
        copy.frontCentRail = [self.frontCentRail copyWithZone:zone];
        copy.rearElecAdj = [self.rearElecAdj copyWithZone:zone];
    }
    
    return copy;
}


@end
