//
//  Cbct.m
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Cbct.h"


NSString *const kCbctSplLcd = @"splLcd";
NSString *const kCbctInColor = @"inColor";
NSString *const kCbctPanCamera = @"panCamera";
NSString *const kCbctActiveSteer = @"activeSteer";
NSString *const kCbctActiveSafe = @"activeSafe";
NSString *const kCbctAuxiliary = @"auxiliary";
NSString *const kCbctCarId = @"carId";
NSString *const kCbctAutoPark = @"autoPark";
NSString *const kCbctLaneDepWarn = @"laneDepWarn";
NSString *const kCbctOutColor = @"outColor";
NSString *const kCbctEngineSs = @"engineSs";
NSString *const kCbctNightVision = @"nightVision";
NSString *const kCbctAdaCru = @"adaCru";


@interface Cbct ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cbct

@synthesize splLcd = _splLcd;
@synthesize inColor = _inColor;
@synthesize panCamera = _panCamera;
@synthesize activeSteer = _activeSteer;
@synthesize activeSafe = _activeSafe;
@synthesize auxiliary = _auxiliary;
@synthesize carId = _carId;
@synthesize autoPark = _autoPark;
@synthesize laneDepWarn = _laneDepWarn;
@synthesize outColor = _outColor;
@synthesize engineSs = _engineSs;
@synthesize nightVision = _nightVision;
@synthesize adaCru = _adaCru;


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
            self.splLcd = [self objectOrNilForKey:kCbctSplLcd fromDictionary:dict];
            self.inColor = [self objectOrNilForKey:kCbctInColor fromDictionary:dict];
            self.panCamera = [self objectOrNilForKey:kCbctPanCamera fromDictionary:dict];
            self.activeSteer = [self objectOrNilForKey:kCbctActiveSteer fromDictionary:dict];
            self.activeSafe = [self objectOrNilForKey:kCbctActiveSafe fromDictionary:dict];
            self.auxiliary = [self objectOrNilForKey:kCbctAuxiliary fromDictionary:dict];
            self.carId = [[self objectOrNilForKey:kCbctCarId fromDictionary:dict] doubleValue];
            self.autoPark = [self objectOrNilForKey:kCbctAutoPark fromDictionary:dict];
            self.laneDepWarn = [self objectOrNilForKey:kCbctLaneDepWarn fromDictionary:dict];
            self.outColor = [self objectOrNilForKey:kCbctOutColor fromDictionary:dict];
            self.engineSs = [self objectOrNilForKey:kCbctEngineSs fromDictionary:dict];
            self.nightVision = [self objectOrNilForKey:kCbctNightVision fromDictionary:dict];
            self.adaCru = [self objectOrNilForKey:kCbctAdaCru fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.splLcd forKey:kCbctSplLcd];
    [mutableDict setValue:self.inColor forKey:kCbctInColor];
    [mutableDict setValue:self.panCamera forKey:kCbctPanCamera];
    [mutableDict setValue:self.activeSteer forKey:kCbctActiveSteer];
    [mutableDict setValue:self.activeSafe forKey:kCbctActiveSafe];
    [mutableDict setValue:self.auxiliary forKey:kCbctAuxiliary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.carId] forKey:kCbctCarId];
    [mutableDict setValue:self.autoPark forKey:kCbctAutoPark];
    [mutableDict setValue:self.laneDepWarn forKey:kCbctLaneDepWarn];
    [mutableDict setValue:self.outColor forKey:kCbctOutColor];
    [mutableDict setValue:self.engineSs forKey:kCbctEngineSs];
    [mutableDict setValue:self.nightVision forKey:kCbctNightVision];
    [mutableDict setValue:self.adaCru forKey:kCbctAdaCru];

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

    self.splLcd = [aDecoder decodeObjectForKey:kCbctSplLcd];
    self.inColor = [aDecoder decodeObjectForKey:kCbctInColor];
    self.panCamera = [aDecoder decodeObjectForKey:kCbctPanCamera];
    self.activeSteer = [aDecoder decodeObjectForKey:kCbctActiveSteer];
    self.activeSafe = [aDecoder decodeObjectForKey:kCbctActiveSafe];
    self.auxiliary = [aDecoder decodeObjectForKey:kCbctAuxiliary];
    self.carId = [aDecoder decodeDoubleForKey:kCbctCarId];
    self.autoPark = [aDecoder decodeObjectForKey:kCbctAutoPark];
    self.laneDepWarn = [aDecoder decodeObjectForKey:kCbctLaneDepWarn];
    self.outColor = [aDecoder decodeObjectForKey:kCbctOutColor];
    self.engineSs = [aDecoder decodeObjectForKey:kCbctEngineSs];
    self.nightVision = [aDecoder decodeObjectForKey:kCbctNightVision];
    self.adaCru = [aDecoder decodeObjectForKey:kCbctAdaCru];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_splLcd forKey:kCbctSplLcd];
    [aCoder encodeObject:_inColor forKey:kCbctInColor];
    [aCoder encodeObject:_panCamera forKey:kCbctPanCamera];
    [aCoder encodeObject:_activeSteer forKey:kCbctActiveSteer];
    [aCoder encodeObject:_activeSafe forKey:kCbctActiveSafe];
    [aCoder encodeObject:_auxiliary forKey:kCbctAuxiliary];
    [aCoder encodeDouble:_carId forKey:kCbctCarId];
    [aCoder encodeObject:_autoPark forKey:kCbctAutoPark];
    [aCoder encodeObject:_laneDepWarn forKey:kCbctLaneDepWarn];
    [aCoder encodeObject:_outColor forKey:kCbctOutColor];
    [aCoder encodeObject:_engineSs forKey:kCbctEngineSs];
    [aCoder encodeObject:_nightVision forKey:kCbctNightVision];
    [aCoder encodeObject:_adaCru forKey:kCbctAdaCru];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cbct *copy = [[Cbct alloc] init];
    
    if (copy) {

        copy.splLcd = [self.splLcd copyWithZone:zone];
        copy.inColor = [self.inColor copyWithZone:zone];
        copy.panCamera = [self.panCamera copyWithZone:zone];
        copy.activeSteer = [self.activeSteer copyWithZone:zone];
        copy.activeSafe = [self.activeSafe copyWithZone:zone];
        copy.auxiliary = [self.auxiliary copyWithZone:zone];
        copy.carId = self.carId;
        copy.autoPark = [self.autoPark copyWithZone:zone];
        copy.laneDepWarn = [self.laneDepWarn copyWithZone:zone];
        copy.outColor = [self.outColor copyWithZone:zone];
        copy.engineSs = [self.engineSs copyWithZone:zone];
        copy.nightVision = [self.nightVision copyWithZone:zone];
        copy.adaCru = [self.adaCru copyWithZone:zone];
    }
    
    return copy;
}


@end
