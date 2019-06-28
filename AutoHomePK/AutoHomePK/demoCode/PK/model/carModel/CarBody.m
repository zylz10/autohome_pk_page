//
//	CarBody.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CarBody.h"

NSString *const kCarBodyFrontGauge = @"front_gauge";
NSString *const kCarBodyHeight = @"height";
NSString *const kCarBodyLength = @"length";
NSString *const kCarBodyTankVolume = @"tank_volume";
NSString *const kCarBodyTrackRear = @"track_rear";
NSString *const kCarBodyTrunkVolume = @"trunk_volume";
NSString *const kCarBodyUnladenMass = @"unladen_mass";
NSString *const kCarBodyWheelbase = @"wheelbase";
NSString *const kCarBodyWidth = @"width";

@interface CarBody ()
@end
@implementation CarBody




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCarBodyFrontGauge] isKindOfClass:[NSNull class]]){
		self.frontGauge = dictionary[kCarBodyFrontGauge];
	}	
	if(![dictionary[kCarBodyHeight] isKindOfClass:[NSNull class]]){
		self.height = dictionary[kCarBodyHeight];
	}	
	if(![dictionary[kCarBodyLength] isKindOfClass:[NSNull class]]){
		self.length = dictionary[kCarBodyLength];
	}	
	if(![dictionary[kCarBodyTankVolume] isKindOfClass:[NSNull class]]){
		self.tankVolume = dictionary[kCarBodyTankVolume];
	}	
	if(![dictionary[kCarBodyTrackRear] isKindOfClass:[NSNull class]]){
		self.trackRear = dictionary[kCarBodyTrackRear];
	}	
	if(![dictionary[kCarBodyTrunkVolume] isKindOfClass:[NSNull class]]){
		self.trunkVolume = dictionary[kCarBodyTrunkVolume];
	}	
	if(![dictionary[kCarBodyUnladenMass] isKindOfClass:[NSNull class]]){
		self.unladenMass = dictionary[kCarBodyUnladenMass];
	}	
	if(![dictionary[kCarBodyWheelbase] isKindOfClass:[NSNull class]]){
		self.wheelbase = dictionary[kCarBodyWheelbase];
	}	
	if(![dictionary[kCarBodyWidth] isKindOfClass:[NSNull class]]){
		self.width = dictionary[kCarBodyWidth];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.frontGauge != nil){
		dictionary[kCarBodyFrontGauge] = self.frontGauge;
	}
	if(self.height != nil){
		dictionary[kCarBodyHeight] = self.height;
	}
	if(self.length != nil){
		dictionary[kCarBodyLength] = self.length;
	}
	if(self.tankVolume != nil){
		dictionary[kCarBodyTankVolume] = self.tankVolume;
	}
	if(self.trackRear != nil){
		dictionary[kCarBodyTrackRear] = self.trackRear;
	}
	if(self.trunkVolume != nil){
		dictionary[kCarBodyTrunkVolume] = self.trunkVolume;
	}
	if(self.unladenMass != nil){
		dictionary[kCarBodyUnladenMass] = self.unladenMass;
	}
	if(self.wheelbase != nil){
		dictionary[kCarBodyWheelbase] = self.wheelbase;
	}
	if(self.width != nil){
		dictionary[kCarBodyWidth] = self.width;
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
	if(self.frontGauge != nil){
		[aCoder encodeObject:self.frontGauge forKey:kCarBodyFrontGauge];
	}
	if(self.height != nil){
		[aCoder encodeObject:self.height forKey:kCarBodyHeight];
	}
	if(self.length != nil){
		[aCoder encodeObject:self.length forKey:kCarBodyLength];
	}
	if(self.tankVolume != nil){
		[aCoder encodeObject:self.tankVolume forKey:kCarBodyTankVolume];
	}
	if(self.trackRear != nil){
		[aCoder encodeObject:self.trackRear forKey:kCarBodyTrackRear];
	}
	if(self.trunkVolume != nil){
		[aCoder encodeObject:self.trunkVolume forKey:kCarBodyTrunkVolume];
	}
	if(self.unladenMass != nil){
		[aCoder encodeObject:self.unladenMass forKey:kCarBodyUnladenMass];
	}
	if(self.wheelbase != nil){
		[aCoder encodeObject:self.wheelbase forKey:kCarBodyWheelbase];
	}
	if(self.width != nil){
		[aCoder encodeObject:self.width forKey:kCarBodyWidth];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.frontGauge = [aDecoder decodeObjectForKey:kCarBodyFrontGauge];
	self.height = [aDecoder decodeObjectForKey:kCarBodyHeight];
	self.length = [aDecoder decodeObjectForKey:kCarBodyLength];
	self.tankVolume = [aDecoder decodeObjectForKey:kCarBodyTankVolume];
	self.trackRear = [aDecoder decodeObjectForKey:kCarBodyTrackRear];
	self.trunkVolume = [aDecoder decodeObjectForKey:kCarBodyTrunkVolume];
	self.unladenMass = [aDecoder decodeObjectForKey:kCarBodyUnladenMass];
	self.wheelbase = [aDecoder decodeObjectForKey:kCarBodyWheelbase];
	self.width = [aDecoder decodeObjectForKey:kCarBodyWidth];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	CarBody *copy = [CarBody new];

	copy.frontGauge = [self.frontGauge copy];
	copy.height = [self.height copy];
	copy.length = [self.length copy];
	copy.tankVolume = [self.tankVolume copy];
	copy.trackRear = [self.trackRear copy];
	copy.trunkVolume = [self.trunkVolume copy];
	copy.unladenMass = [self.unladenMass copy];
	copy.wheelbase = [self.wheelbase copy];
	copy.width = [self.width copy];

	return copy;
}
@end