//
//	Wheel.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Wheel.h"

NSString *const kWheelBehindBrakeType = @"behind_brake_type";
NSString *const kWheelBehindTireType = @"behind_tire_type";
NSString *const kWheelFrontBrakeType = @"front_brake_type";
NSString *const kWheelFrontTireType = @"front_tire_type";
NSString *const kWheelParkingBrakeType = @"parking_brake_type";

@interface Wheel ()
@end
@implementation Wheel




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kWheelBehindBrakeType] isKindOfClass:[NSNull class]]){
		self.behindBrakeType = dictionary[kWheelBehindBrakeType];
	}	
	if(![dictionary[kWheelBehindTireType] isKindOfClass:[NSNull class]]){
		self.behindTireType = dictionary[kWheelBehindTireType];
	}	
	if(![dictionary[kWheelFrontBrakeType] isKindOfClass:[NSNull class]]){
		self.frontBrakeType = dictionary[kWheelFrontBrakeType];
	}	
	if(![dictionary[kWheelFrontTireType] isKindOfClass:[NSNull class]]){
		self.frontTireType = dictionary[kWheelFrontTireType];
	}	
	if(![dictionary[kWheelParkingBrakeType] isKindOfClass:[NSNull class]]){
		self.parkingBrakeType = dictionary[kWheelParkingBrakeType];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.behindBrakeType != nil){
		dictionary[kWheelBehindBrakeType] = self.behindBrakeType;
	}
	if(self.behindTireType != nil){
		dictionary[kWheelBehindTireType] = self.behindTireType;
	}
	if(self.frontBrakeType != nil){
		dictionary[kWheelFrontBrakeType] = self.frontBrakeType;
	}
	if(self.frontTireType != nil){
		dictionary[kWheelFrontTireType] = self.frontTireType;
	}
	if(self.parkingBrakeType != nil){
		dictionary[kWheelParkingBrakeType] = self.parkingBrakeType;
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
	if(self.behindBrakeType != nil){
		[aCoder encodeObject:self.behindBrakeType forKey:kWheelBehindBrakeType];
	}
	if(self.behindTireType != nil){
		[aCoder encodeObject:self.behindTireType forKey:kWheelBehindTireType];
	}
	if(self.frontBrakeType != nil){
		[aCoder encodeObject:self.frontBrakeType forKey:kWheelFrontBrakeType];
	}
	if(self.frontTireType != nil){
		[aCoder encodeObject:self.frontTireType forKey:kWheelFrontTireType];
	}
	if(self.parkingBrakeType != nil){
		[aCoder encodeObject:self.parkingBrakeType forKey:kWheelParkingBrakeType];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.behindBrakeType = [aDecoder decodeObjectForKey:kWheelBehindBrakeType];
	self.behindTireType = [aDecoder decodeObjectForKey:kWheelBehindTireType];
	self.frontBrakeType = [aDecoder decodeObjectForKey:kWheelFrontBrakeType];
	self.frontTireType = [aDecoder decodeObjectForKey:kWheelFrontTireType];
	self.parkingBrakeType = [aDecoder decodeObjectForKey:kWheelParkingBrakeType];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Wheel *copy = [Wheel new];

	copy.behindBrakeType = [self.behindBrakeType copy];
	copy.behindTireType = [self.behindTireType copy];
	copy.frontBrakeType = [self.frontBrakeType copy];
	copy.frontTireType = [self.frontTireType copy];
	copy.parkingBrakeType = [self.parkingBrakeType copy];

	return copy;
}
@end