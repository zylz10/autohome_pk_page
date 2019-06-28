//
//	Internal.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Internal.h"

NSString *const kInternalINS = @"INS";
NSString *const kInternalMFL = @"MFL";
NSString *const kInternalAllLcdInstrument = @"all_lcd_instrument";
NSString *const kInternalBuiltInRecorder = @"built_in_recorder";
NSString *const kInternalCentralAisleDesign = @"central_aisle_design";
NSString *const kInternalEnvironmentalSoftInstrument = @"environmental_soft_instrument";
NSString *const kInternalLaserTexture = @"laser_texture";
NSString *const kInternalLeatherSteeringWheel = @"leather_steering_wheel";
NSString *const kInternalPowerPort = @"power_port";

@interface Internal ()
@end
@implementation Internal




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kInternalINS] isKindOfClass:[NSNull class]]){
		self.iNS = dictionary[kInternalINS];
	}	
	if(![dictionary[kInternalMFL] isKindOfClass:[NSNull class]]){
		self.mFL = dictionary[kInternalMFL];
	}	
	if(![dictionary[kInternalAllLcdInstrument] isKindOfClass:[NSNull class]]){
		self.allLcdInstrument = dictionary[kInternalAllLcdInstrument];
	}	
	if(![dictionary[kInternalBuiltInRecorder] isKindOfClass:[NSNull class]]){
		self.builtInRecorder = dictionary[kInternalBuiltInRecorder];
	}	
	if(![dictionary[kInternalCentralAisleDesign] isKindOfClass:[NSNull class]]){
		self.centralAisleDesign = dictionary[kInternalCentralAisleDesign];
	}	
	if(![dictionary[kInternalEnvironmentalSoftInstrument] isKindOfClass:[NSNull class]]){
		self.environmentalSoftInstrument = dictionary[kInternalEnvironmentalSoftInstrument];
	}	
	if(![dictionary[kInternalLaserTexture] isKindOfClass:[NSNull class]]){
		self.laserTexture = dictionary[kInternalLaserTexture];
	}	
	if(![dictionary[kInternalLeatherSteeringWheel] isKindOfClass:[NSNull class]]){
		self.leatherSteeringWheel = dictionary[kInternalLeatherSteeringWheel];
	}	
	if(![dictionary[kInternalPowerPort] isKindOfClass:[NSNull class]]){
		self.powerPort = dictionary[kInternalPowerPort];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.iNS != nil){
		dictionary[kInternalINS] = self.iNS;
	}
	if(self.mFL != nil){
		dictionary[kInternalMFL] = self.mFL;
	}
	if(self.allLcdInstrument != nil){
		dictionary[kInternalAllLcdInstrument] = self.allLcdInstrument;
	}
	if(self.builtInRecorder != nil){
		dictionary[kInternalBuiltInRecorder] = self.builtInRecorder;
	}
	if(self.centralAisleDesign != nil){
		dictionary[kInternalCentralAisleDesign] = self.centralAisleDesign;
	}
	if(self.environmentalSoftInstrument != nil){
		dictionary[kInternalEnvironmentalSoftInstrument] = self.environmentalSoftInstrument;
	}
	if(self.laserTexture != nil){
		dictionary[kInternalLaserTexture] = self.laserTexture;
	}
	if(self.leatherSteeringWheel != nil){
		dictionary[kInternalLeatherSteeringWheel] = self.leatherSteeringWheel;
	}
	if(self.powerPort != nil){
		dictionary[kInternalPowerPort] = self.powerPort;
	}
	return dictionary;

}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
	if(self.iNS != nil){
		[aCoder encodeObject:self.iNS forKey:kInternalINS];
	}
	if(self.mFL != nil){
		[aCoder encodeObject:self.mFL forKey:kInternalMFL];
	}
	if(self.allLcdInstrument != nil){
		[aCoder encodeObject:self.allLcdInstrument forKey:kInternalAllLcdInstrument];
	}
	if(self.builtInRecorder != nil){
		[aCoder encodeObject:self.builtInRecorder forKey:kInternalBuiltInRecorder];
	}
	if(self.centralAisleDesign != nil){
		[aCoder encodeObject:self.centralAisleDesign forKey:kInternalCentralAisleDesign];
	}
	if(self.environmentalSoftInstrument != nil){
		[aCoder encodeObject:self.environmentalSoftInstrument forKey:kInternalEnvironmentalSoftInstrument];
	}
	if(self.laserTexture != nil){
		[aCoder encodeObject:self.laserTexture forKey:kInternalLaserTexture];
	}
	if(self.leatherSteeringWheel != nil){
		[aCoder encodeObject:self.leatherSteeringWheel forKey:kInternalLeatherSteeringWheel];
	}
	if(self.powerPort != nil){
		[aCoder encodeObject:self.powerPort forKey:kInternalPowerPort];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.iNS = [aDecoder decodeObjectForKey:kInternalINS];
	self.mFL = [aDecoder decodeObjectForKey:kInternalMFL];
	self.allLcdInstrument = [aDecoder decodeObjectForKey:kInternalAllLcdInstrument];
	self.builtInRecorder = [aDecoder decodeObjectForKey:kInternalBuiltInRecorder];
	self.centralAisleDesign = [aDecoder decodeObjectForKey:kInternalCentralAisleDesign];
	self.environmentalSoftInstrument = [aDecoder decodeObjectForKey:kInternalEnvironmentalSoftInstrument];
	self.laserTexture = [aDecoder decodeObjectForKey:kInternalLaserTexture];
	self.leatherSteeringWheel = [aDecoder decodeObjectForKey:kInternalLeatherSteeringWheel];
	self.powerPort = [aDecoder decodeObjectForKey:kInternalPowerPort];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Internal *copy = [Internal new];

	copy.iNS = [self.iNS copy];
	copy.mFL = [self.mFL copy];
	copy.allLcdInstrument = [self.allLcdInstrument copy];
	copy.builtInRecorder = [self.builtInRecorder copy];
	copy.centralAisleDesign = [self.centralAisleDesign copy];
	copy.environmentalSoftInstrument = [self.environmentalSoftInstrument copy];
	copy.laserTexture = [self.laserTexture copy];
	copy.leatherSteeringWheel = [self.leatherSteeringWheel copy];
	copy.powerPort = [self.powerPort copy];

	return copy;
}
@end