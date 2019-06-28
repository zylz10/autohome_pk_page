//
//	Air.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Air.h"

NSString *const kAirAirControl = @"air_control";
NSString *const kAirCarPurifier = @"car_purifier";

@interface Air ()
@end
@implementation Air




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kAirAirControl] isKindOfClass:[NSNull class]]){
		self.airControl = dictionary[kAirAirControl];
	}	
	if(![dictionary[kAirCarPurifier] isKindOfClass:[NSNull class]]){
		self.carPurifier = dictionary[kAirCarPurifier];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.airControl != nil){
		dictionary[kAirAirControl] = self.airControl;
	}
	if(self.carPurifier != nil){
		dictionary[kAirCarPurifier] = self.carPurifier;
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
	if(self.airControl != nil){
		[aCoder encodeObject:self.airControl forKey:kAirAirControl];
	}
	if(self.carPurifier != nil){
		[aCoder encodeObject:self.carPurifier forKey:kAirCarPurifier];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.airControl = [aDecoder decodeObjectForKey:kAirAirControl];
	self.carPurifier = [aDecoder decodeObjectForKey:kAirCarPurifier];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Air *copy = [Air new];

	copy.airControl = [self.airControl copy];
	copy.carPurifier = [self.carPurifier copy];

	return copy;
}
@end