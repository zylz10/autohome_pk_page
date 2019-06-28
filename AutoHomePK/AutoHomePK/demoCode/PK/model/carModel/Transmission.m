//
//	Transmission.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Transmission.h"

NSString *const kTransmissionBlockNumber = @"block_number";
NSString *const kTransmissionForShort = @"for_short";
NSString *const kTransmissionGearboxType = @"gearbox_type";

@interface Transmission ()
@end
@implementation Transmission




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kTransmissionBlockNumber] isKindOfClass:[NSNull class]]){
		self.blockNumber = dictionary[kTransmissionBlockNumber];
	}	
	if(![dictionary[kTransmissionForShort] isKindOfClass:[NSNull class]]){
		self.forShort = dictionary[kTransmissionForShort];
	}	
	if(![dictionary[kTransmissionGearboxType] isKindOfClass:[NSNull class]]){
		self.gearboxType = dictionary[kTransmissionGearboxType];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.blockNumber != nil){
		dictionary[kTransmissionBlockNumber] = self.blockNumber;
	}
	if(self.forShort != nil){
		dictionary[kTransmissionForShort] = self.forShort;
	}
	if(self.gearboxType != nil){
		dictionary[kTransmissionGearboxType] = self.gearboxType;
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
	if(self.blockNumber != nil){
		[aCoder encodeObject:self.blockNumber forKey:kTransmissionBlockNumber];
	}
	if(self.forShort != nil){
		[aCoder encodeObject:self.forShort forKey:kTransmissionForShort];
	}
	if(self.gearboxType != nil){
		[aCoder encodeObject:self.gearboxType forKey:kTransmissionGearboxType];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.blockNumber = [aDecoder decodeObjectForKey:kTransmissionBlockNumber];
	self.forShort = [aDecoder decodeObjectForKey:kTransmissionForShort];
	self.gearboxType = [aDecoder decodeObjectForKey:kTransmissionGearboxType];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Transmission *copy = [Transmission new];

	copy.blockNumber = [self.blockNumber copy];
	copy.forShort = [self.forShort copy];
	copy.gearboxType = [self.gearboxType copy];

	return copy;
}
@end