//
//	Engine.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Engine.h"

NSString *const kEngineBodyMaterial = @"body_material";
NSString *const kEngineEngineMaxPower = @"engine_max_power";
NSString *const kEngineEngineMaxTorque = @"engine_max_torque";
NSString *const kEngineHeadmaterial = @"headmaterial";
NSString *const kEngineMaxTorqueSpeed = @"max_torque_speed";
NSString *const kEngineRpm = @"rpm";
NSString *const kEngineStandards = @"standards";

@interface Engine ()
@end
@implementation Engine




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kEngineBodyMaterial] isKindOfClass:[NSNull class]]){
		self.bodyMaterial = dictionary[kEngineBodyMaterial];
	}	
	if(![dictionary[kEngineEngineMaxPower] isKindOfClass:[NSNull class]]){
		self.engineMaxPower = dictionary[kEngineEngineMaxPower];
	}	
	if(![dictionary[kEngineEngineMaxTorque] isKindOfClass:[NSNull class]]){
		self.engineMaxTorque = dictionary[kEngineEngineMaxTorque];
	}	
	if(![dictionary[kEngineHeadmaterial] isKindOfClass:[NSNull class]]){
		self.headmaterial = dictionary[kEngineHeadmaterial];
	}	
	if(![dictionary[kEngineMaxTorqueSpeed] isKindOfClass:[NSNull class]]){
		self.maxTorqueSpeed = dictionary[kEngineMaxTorqueSpeed];
	}	
	if(![dictionary[kEngineRpm] isKindOfClass:[NSNull class]]){
		self.rpm = dictionary[kEngineRpm];
	}	
	if(![dictionary[kEngineStandards] isKindOfClass:[NSNull class]]){
		self.standards = dictionary[kEngineStandards];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.bodyMaterial != nil){
		dictionary[kEngineBodyMaterial] = self.bodyMaterial;
	}
	if(self.engineMaxPower != nil){
		dictionary[kEngineEngineMaxPower] = self.engineMaxPower;
	}
	if(self.engineMaxTorque != nil){
		dictionary[kEngineEngineMaxTorque] = self.engineMaxTorque;
	}
	if(self.headmaterial != nil){
		dictionary[kEngineHeadmaterial] = self.headmaterial;
	}
	if(self.maxTorqueSpeed != nil){
		dictionary[kEngineMaxTorqueSpeed] = self.maxTorqueSpeed;
	}
	if(self.rpm != nil){
		dictionary[kEngineRpm] = self.rpm;
	}
	if(self.standards != nil){
		dictionary[kEngineStandards] = self.standards;
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
	if(self.bodyMaterial != nil){
		[aCoder encodeObject:self.bodyMaterial forKey:kEngineBodyMaterial];
	}
	if(self.engineMaxPower != nil){
		[aCoder encodeObject:self.engineMaxPower forKey:kEngineEngineMaxPower];
	}
	if(self.engineMaxTorque != nil){
		[aCoder encodeObject:self.engineMaxTorque forKey:kEngineEngineMaxTorque];
	}
	if(self.headmaterial != nil){
		[aCoder encodeObject:self.headmaterial forKey:kEngineHeadmaterial];
	}
	if(self.maxTorqueSpeed != nil){
		[aCoder encodeObject:self.maxTorqueSpeed forKey:kEngineMaxTorqueSpeed];
	}
	if(self.rpm != nil){
		[aCoder encodeObject:self.rpm forKey:kEngineRpm];
	}
	if(self.standards != nil){
		[aCoder encodeObject:self.standards forKey:kEngineStandards];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.bodyMaterial = [aDecoder decodeObjectForKey:kEngineBodyMaterial];
	self.engineMaxPower = [aDecoder decodeObjectForKey:kEngineEngineMaxPower];
	self.engineMaxTorque = [aDecoder decodeObjectForKey:kEngineEngineMaxTorque];
	self.headmaterial = [aDecoder decodeObjectForKey:kEngineHeadmaterial];
	self.maxTorqueSpeed = [aDecoder decodeObjectForKey:kEngineMaxTorqueSpeed];
	self.rpm = [aDecoder decodeObjectForKey:kEngineRpm];
	self.standards = [aDecoder decodeObjectForKey:kEngineStandards];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Engine *copy = [Engine new];

	copy.bodyMaterial = [self.bodyMaterial copy];
	copy.engineMaxPower = [self.engineMaxPower copy];
	copy.engineMaxTorque = [self.engineMaxTorque copy];
	copy.headmaterial = [self.headmaterial copy];
	copy.maxTorqueSpeed = [self.maxTorqueSpeed copy];
	copy.rpm = [self.rpm copy];
	copy.standards = [self.standards copy];

	return copy;
}
@end