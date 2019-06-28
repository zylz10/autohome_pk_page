//
//	Chassi.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Chassi.h"

NSString *const kChassiBehindSuspensionType = @"behind_suspension_type";
NSString *const kChassiFrontSuspensionType = @"front_suspension_type";
NSString *const kChassiPowerType = @"power_type";

@interface Chassi ()
@end
@implementation Chassi




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kChassiBehindSuspensionType] isKindOfClass:[NSNull class]]){
		self.behindSuspensionType = dictionary[kChassiBehindSuspensionType];
	}	
	if(![dictionary[kChassiFrontSuspensionType] isKindOfClass:[NSNull class]]){
		self.frontSuspensionType = dictionary[kChassiFrontSuspensionType];
	}	
	if(![dictionary[kChassiPowerType] isKindOfClass:[NSNull class]]){
		self.powerType = dictionary[kChassiPowerType];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.behindSuspensionType != nil){
		dictionary[kChassiBehindSuspensionType] = self.behindSuspensionType;
	}
	if(self.frontSuspensionType != nil){
		dictionary[kChassiFrontSuspensionType] = self.frontSuspensionType;
	}
	if(self.powerType != nil){
		dictionary[kChassiPowerType] = self.powerType;
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
	if(self.behindSuspensionType != nil){
		[aCoder encodeObject:self.behindSuspensionType forKey:kChassiBehindSuspensionType];
	}
	if(self.frontSuspensionType != nil){
		[aCoder encodeObject:self.frontSuspensionType forKey:kChassiFrontSuspensionType];
	}
	if(self.powerType != nil){
		[aCoder encodeObject:self.powerType forKey:kChassiPowerType];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.behindSuspensionType = [aDecoder decodeObjectForKey:kChassiBehindSuspensionType];
	self.frontSuspensionType = [aDecoder decodeObjectForKey:kChassiFrontSuspensionType];
	self.powerType = [aDecoder decodeObjectForKey:kChassiPowerType];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Chassi *copy = [Chassi new];

	copy.behindSuspensionType = [self.behindSuspensionType copy];
	copy.frontSuspensionType = [self.frontSuspensionType copy];
	copy.powerType = [self.powerType copy];

	return copy;
}
@end