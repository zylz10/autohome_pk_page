//
//	BaseParameter.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "BaseParameter.h"

NSString *const kBaseParameterBaseMaxPower = @"base_max_power";
NSString *const kBaseParameterBaseMaxTorque = @"base_max_torque";
NSString *const kBaseParameterDimensions = @"dimensions";
NSString *const kBaseParameterEngine = @"engine";
NSString *const kBaseParameterGearbox = @"gearbox";

@interface BaseParameter ()
@end
@implementation BaseParameter




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kBaseParameterBaseMaxPower] isKindOfClass:[NSNull class]]){
		self.baseMaxPower = dictionary[kBaseParameterBaseMaxPower];
	}	
	if(![dictionary[kBaseParameterBaseMaxTorque] isKindOfClass:[NSNull class]]){
		self.baseMaxTorque = dictionary[kBaseParameterBaseMaxTorque];
	}	
	if(![dictionary[kBaseParameterDimensions] isKindOfClass:[NSNull class]]){
		self.dimensions = dictionary[kBaseParameterDimensions];
	}	
	if(![dictionary[kBaseParameterEngine] isKindOfClass:[NSNull class]]){
		self.engine = dictionary[kBaseParameterEngine];
	}	
	if(![dictionary[kBaseParameterGearbox] isKindOfClass:[NSNull class]]){
		self.gearbox = dictionary[kBaseParameterGearbox];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.baseMaxPower != nil){
		dictionary[kBaseParameterBaseMaxPower] = self.baseMaxPower;
	}
	if(self.baseMaxTorque != nil){
		dictionary[kBaseParameterBaseMaxTorque] = self.baseMaxTorque;
	}
	if(self.dimensions != nil){
		dictionary[kBaseParameterDimensions] = self.dimensions;
	}
	if(self.engine != nil){
		dictionary[kBaseParameterEngine] = self.engine;
	}
	if(self.gearbox != nil){
		dictionary[kBaseParameterGearbox] = self.gearbox;
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
	if(self.baseMaxPower != nil){
		[aCoder encodeObject:self.baseMaxPower forKey:kBaseParameterBaseMaxPower];
	}
	if(self.baseMaxTorque != nil){
		[aCoder encodeObject:self.baseMaxTorque forKey:kBaseParameterBaseMaxTorque];
	}
	if(self.dimensions != nil){
		[aCoder encodeObject:self.dimensions forKey:kBaseParameterDimensions];
	}
	if(self.engine != nil){
		[aCoder encodeObject:self.engine forKey:kBaseParameterEngine];
	}
	if(self.gearbox != nil){
		[aCoder encodeObject:self.gearbox forKey:kBaseParameterGearbox];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.baseMaxPower = [aDecoder decodeObjectForKey:kBaseParameterBaseMaxPower];
	self.baseMaxTorque = [aDecoder decodeObjectForKey:kBaseParameterBaseMaxTorque];
	self.dimensions = [aDecoder decodeObjectForKey:kBaseParameterDimensions];
	self.engine = [aDecoder decodeObjectForKey:kBaseParameterEngine];
	self.gearbox = [aDecoder decodeObjectForKey:kBaseParameterGearbox];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	BaseParameter *copy = [BaseParameter new];

	copy.baseMaxPower = [self.baseMaxPower copy];
	copy.baseMaxTorque = [self.baseMaxTorque copy];
	copy.dimensions = [self.dimensions copy];
	copy.engine = [self.engine copy];
	copy.gearbox = [self.gearbox copy];

	return copy;
}
@end