//
//  Cbcgl.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbcgl.h"


NSString *const kCbcglAutoWiper = @"autoWiper";
NSString *const kCbcglRearElecWin = @"rearElecWin";
NSString *const kCbcglFontElecWin = @"fontElecWin";
NSString *const kCbcglOutAntiGlare = @"outAntiGlare";
NSString *const kCbcglInAntiGlare = @"inAntiGlare";
NSString *const kCbcglRvElecFold = @"rvElecFold";
NSString *const kCbcglAntiUv = @"antiUv";
NSString *const kCbcglRvMemory = @"rvMemory";
NSString *const kCbcglCarId = @"carId";
NSString *const kCbcglSunShPla = @"sunShPla";
NSString *const kCbcglRvHeat = @"rvHeat";
NSString *const kCbcglRearMidSs = @"rearMidSs";
NSString *const kCbcglRearSideSs = @"rearSideSs";
NSString *const kCbcglRvElecAdj = @"rvElecAdj";
NSString *const kCbcglRearWiper = @"rearWiper";
NSString *const kCbcglRearPriWin = @"rearPriWin";
NSString *const kCbcglPrevClipWin = @"prevClipWin";


@interface Cbcgl ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbcgl

@synthesize autoWiper = _autoWiper;
@synthesize rearElecWin = _rearElecWin;
@synthesize fontElecWin = _fontElecWin;
@synthesize outAntiGlare = _outAntiGlare;
@synthesize inAntiGlare = _inAntiGlare;
@synthesize rvElecFold = _rvElecFold;
@synthesize antiUv = _antiUv;
@synthesize rvMemory = _rvMemory;
@synthesize carId = _carId;
@synthesize sunShPla = _sunShPla;
@synthesize rvHeat = _rvHeat;
@synthesize rearMidSs = _rearMidSs;
@synthesize rearSideSs = _rearSideSs;
@synthesize rvElecAdj = _rvElecAdj;
@synthesize rearWiper = _rearWiper;
@synthesize rearPriWin = _rearPriWin;
@synthesize prevClipWin = _prevClipWin;


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
            self.autoWiper = [self objectOrNilForKey:kCbcglAutoWiper fromDictionary:dict];
            self.rearElecWin = [self objectOrNilForKey:kCbcglRearElecWin fromDictionary:dict];
            self.fontElecWin = [self objectOrNilForKey:kCbcglFontElecWin fromDictionary:dict];
            self.outAntiGlare = [self objectOrNilForKey:kCbcglOutAntiGlare fromDictionary:dict];
            self.inAntiGlare = [self objectOrNilForKey:kCbcglInAntiGlare fromDictionary:dict];
            self.rvElecFold = [self objectOrNilForKey:kCbcglRvElecFold fromDictionary:dict];
            self.antiUv = [self objectOrNilForKey:kCbcglAntiUv fromDictionary:dict];
            self.rvMemory = [self objectOrNilForKey:kCbcglRvMemory fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbcglCarId fromDictionary:dict] doubleValue];
            self.sunShPla = [self objectOrNilForKey:kCbcglSunShPla fromDictionary:dict];
            self.rvHeat = [self objectOrNilForKey:kCbcglRvHeat fromDictionary:dict];
            self.rearMidSs = [self objectOrNilForKey:kCbcglRearMidSs fromDictionary:dict];
            self.rearSideSs = [self objectOrNilForKey:kCbcglRearSideSs fromDictionary:dict];
            self.rvElecAdj = [self objectOrNilForKey:kCbcglRvElecAdj fromDictionary:dict];
            self.rearWiper = [self objectOrNilForKey:kCbcglRearWiper fromDictionary:dict];
            self.rearPriWin = [self objectOrNilForKey:kCbcglRearPriWin fromDictionary:dict];
            self.prevClipWin = [self objectOrNilForKey:kCbcglPrevClipWin fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.autoWiper forKey:kCbcglAutoWiper];
    [mutableDict setValue:self.rearElecWin forKey:kCbcglRearElecWin];
    [mutableDict setValue:self.fontElecWin forKey:kCbcglFontElecWin];
    [mutableDict setValue:self.outAntiGlare forKey:kCbcglOutAntiGlare];
    [mutableDict setValue:self.inAntiGlare forKey:kCbcglInAntiGlare];
    [mutableDict setValue:self.rvElecFold forKey:kCbcglRvElecFold];
    [mutableDict setValue:self.antiUv forKey:kCbcglAntiUv];
    [mutableDict setValue:self.rvMemory forKey:kCbcglRvMemory];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbcglCarId];
    [mutableDict setValue:self.sunShPla forKey:kCbcglSunShPla];
    [mutableDict setValue:self.rvHeat forKey:kCbcglRvHeat];
    [mutableDict setValue:self.rearMidSs forKey:kCbcglRearMidSs];
    [mutableDict setValue:self.rearSideSs forKey:kCbcglRearSideSs];
    [mutableDict setValue:self.rvElecAdj forKey:kCbcglRvElecAdj];
    [mutableDict setValue:self.rearWiper forKey:kCbcglRearWiper];
    [mutableDict setValue:self.rearPriWin forKey:kCbcglRearPriWin];
    [mutableDict setValue:self.prevClipWin forKey:kCbcglPrevClipWin];

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

    self.autoWiper = [aDecoder decodeObjectForKey:kCbcglAutoWiper];
    self.rearElecWin = [aDecoder decodeObjectForKey:kCbcglRearElecWin];
    self.fontElecWin = [aDecoder decodeObjectForKey:kCbcglFontElecWin];
    self.outAntiGlare = [aDecoder decodeObjectForKey:kCbcglOutAntiGlare];
    self.inAntiGlare = [aDecoder decodeObjectForKey:kCbcglInAntiGlare];
    self.rvElecFold = [aDecoder decodeObjectForKey:kCbcglRvElecFold];
    self.antiUv = [aDecoder decodeObjectForKey:kCbcglAntiUv];
    self.rvMemory = [aDecoder decodeObjectForKey:kCbcglRvMemory];
    self.carId = [aDecoder decodeDoubleForKey:kCbcglCarId];
    self.sunShPla = [aDecoder decodeObjectForKey:kCbcglSunShPla];
    self.rvHeat = [aDecoder decodeObjectForKey:kCbcglRvHeat];
    self.rearMidSs = [aDecoder decodeObjectForKey:kCbcglRearMidSs];
    self.rearSideSs = [aDecoder decodeObjectForKey:kCbcglRearSideSs];
    self.rvElecAdj = [aDecoder decodeObjectForKey:kCbcglRvElecAdj];
    self.rearWiper = [aDecoder decodeObjectForKey:kCbcglRearWiper];
    self.rearPriWin = [aDecoder decodeObjectForKey:kCbcglRearPriWin];
    self.prevClipWin = [aDecoder decodeObjectForKey:kCbcglPrevClipWin];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_autoWiper forKey:kCbcglAutoWiper];
    [aCoder encodeObject:_rearElecWin forKey:kCbcglRearElecWin];
    [aCoder encodeObject:_fontElecWin forKey:kCbcglFontElecWin];
    [aCoder encodeObject:_outAntiGlare forKey:kCbcglOutAntiGlare];
    [aCoder encodeObject:_inAntiGlare forKey:kCbcglInAntiGlare];
    [aCoder encodeObject:_rvElecFold forKey:kCbcglRvElecFold];
    [aCoder encodeObject:_antiUv forKey:kCbcglAntiUv];
    [aCoder encodeObject:_rvMemory forKey:kCbcglRvMemory];
    [aCoder encodeDouble:_carId forKey:kCbcglCarId];
    [aCoder encodeObject:_sunShPla forKey:kCbcglSunShPla];
    [aCoder encodeObject:_rvHeat forKey:kCbcglRvHeat];
    [aCoder encodeObject:_rearMidSs forKey:kCbcglRearMidSs];
    [aCoder encodeObject:_rearSideSs forKey:kCbcglRearSideSs];
    [aCoder encodeObject:_rvElecAdj forKey:kCbcglRvElecAdj];
    [aCoder encodeObject:_rearWiper forKey:kCbcglRearWiper];
    [aCoder encodeObject:_rearPriWin forKey:kCbcglRearPriWin];
    [aCoder encodeObject:_prevClipWin forKey:kCbcglPrevClipWin];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbcgl *copy = [[Cbcgl alloc] init];
    
    if (copy) {

        copy.autoWiper = [self.autoWiper copyWithZone:zone];
        copy.rearElecWin = [self.rearElecWin copyWithZone:zone];
        copy.fontElecWin = [self.fontElecWin copyWithZone:zone];
        copy.outAntiGlare = [self.outAntiGlare copyWithZone:zone];
        copy.inAntiGlare = [self.inAntiGlare copyWithZone:zone];
        copy.rvElecFold = [self.rvElecFold copyWithZone:zone];
        copy.antiUv = [self.antiUv copyWithZone:zone];
        copy.rvMemory = [self.rvMemory copyWithZone:zone];
        copy.carId = self.carId;
        copy.sunShPla = [self.sunShPla copyWithZone:zone];
        copy.rvHeat = [self.rvHeat copyWithZone:zone];
        copy.rearMidSs = [self.rearMidSs copyWithZone:zone];
        copy.rearSideSs = [self.rearSideSs copyWithZone:zone];
        copy.rvElecAdj = [self.rvElecAdj copyWithZone:zone];
        copy.rearWiper = [self.rearWiper copyWithZone:zone];
        copy.rearPriWin = [self.rearPriWin copyWithZone:zone];
        copy.prevClipWin = [self.prevClipWin copyWithZone:zone];
    }
    
    return copy;
}


@end
