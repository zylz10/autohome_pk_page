//
//  Cbcos.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbcos.h"


NSString *const kCbcosPanSky = @"panSky";
NSString *const kCbcosElecSky = @"elecSky";
NSString *const kCbcosElecBackup = @"elecBackup";
NSString *const kCbcosCarId = @"carId";
NSString *const kCbcosAlumWheel = @"alumWheel";
NSString *const kCbcosSlidDoor = @"slidDoor";
NSString *const kCbcosSportApp = @"sportApp";
NSString *const kCbcosElecDoorPull = @"elecDoorPull";


@interface Cbcos ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbcos

@synthesize panSky = _panSky;
@synthesize elecSky = _elecSky;
@synthesize elecBackup = _elecBackup;
@synthesize carId = _carId;
@synthesize alumWheel = _alumWheel;
@synthesize slidDoor = _slidDoor;
@synthesize sportApp = _sportApp;
@synthesize elecDoorPull = _elecDoorPull;


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
            self.panSky = [self objectOrNilForKey:kCbcosPanSky fromDictionary:dict];
            self.elecSky = [self objectOrNilForKey:kCbcosElecSky fromDictionary:dict];
            self.elecBackup = [self objectOrNilForKey:kCbcosElecBackup fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbcosCarId fromDictionary:dict] doubleValue];
            self.alumWheel = [self objectOrNilForKey:kCbcosAlumWheel fromDictionary:dict];
            self.slidDoor = [self objectOrNilForKey:kCbcosSlidDoor fromDictionary:dict];
            self.sportApp = [self objectOrNilForKey:kCbcosSportApp fromDictionary:dict];
            self.elecDoorPull = [self objectOrNilForKey:kCbcosElecDoorPull fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.panSky forKey:kCbcosPanSky];
    [mutableDict setValue:self.elecSky forKey:kCbcosElecSky];
    [mutableDict setValue:self.elecBackup forKey:kCbcosElecBackup];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbcosCarId];
    [mutableDict setValue:self.alumWheel forKey:kCbcosAlumWheel];
    [mutableDict setValue:self.slidDoor forKey:kCbcosSlidDoor];
    [mutableDict setValue:self.sportApp forKey:kCbcosSportApp];
    [mutableDict setValue:self.elecDoorPull forKey:kCbcosElecDoorPull];

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

    self.panSky = [aDecoder decodeObjectForKey:kCbcosPanSky];
    self.elecSky = [aDecoder decodeObjectForKey:kCbcosElecSky];
    self.elecBackup = [aDecoder decodeObjectForKey:kCbcosElecBackup];
    self.carId = [aDecoder decodeDoubleForKey:kCbcosCarId];
    self.alumWheel = [aDecoder decodeObjectForKey:kCbcosAlumWheel];
    self.slidDoor = [aDecoder decodeObjectForKey:kCbcosSlidDoor];
    self.sportApp = [aDecoder decodeObjectForKey:kCbcosSportApp];
    self.elecDoorPull = [aDecoder decodeObjectForKey:kCbcosElecDoorPull];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_panSky forKey:kCbcosPanSky];
    [aCoder encodeObject:_elecSky forKey:kCbcosElecSky];
    [aCoder encodeObject:_elecBackup forKey:kCbcosElecBackup];
    [aCoder encodeDouble:_carId forKey:kCbcosCarId];
    [aCoder encodeObject:_alumWheel forKey:kCbcosAlumWheel];
    [aCoder encodeObject:_slidDoor forKey:kCbcosSlidDoor];
    [aCoder encodeObject:_sportApp forKey:kCbcosSportApp];
    [aCoder encodeObject:_elecDoorPull forKey:kCbcosElecDoorPull];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbcos *copy = [[Cbcos alloc] init];
    
    if (copy) {

        copy.panSky = [self.panSky copyWithZone:zone];
        copy.elecSky = [self.elecSky copyWithZone:zone];
        copy.elecBackup = [self.elecBackup copyWithZone:zone];
        copy.carId = self.carId;
        copy.alumWheel = [self.alumWheel copyWithZone:zone];
        copy.slidDoor = [self.slidDoor copyWithZone:zone];
        copy.sportApp = [self.sportApp copyWithZone:zone];
        copy.elecDoorPull = [self.elecDoorPull copyWithZone:zone];
    }
    
    return copy;
}


@end
