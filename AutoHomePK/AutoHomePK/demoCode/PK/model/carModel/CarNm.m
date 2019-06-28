//
//	CarNm.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CarNm.h"

NSString *const kCarNmCarNm = @"car_Nm";
NSString *const kCarNmCarImage = @"car_image";
NSString *const kCarNmCarPrice = @"car_price";

@interface CarNm ()
@end
@implementation CarNm




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCarNmCarNm] isKindOfClass:[NSNull class]]){
		self.carNm = dictionary[kCarNmCarNm];
	}	
	if(![dictionary[kCarNmCarImage] isKindOfClass:[NSNull class]]){
		self.carImage = dictionary[kCarNmCarImage];
	}	
	if(![dictionary[kCarNmCarPrice] isKindOfClass:[NSNull class]]){
		self.carPrice = dictionary[kCarNmCarPrice];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.carNm != nil){
		dictionary[kCarNmCarNm] = self.carNm;
	}
	if(self.carImage != nil){
		dictionary[kCarNmCarImage] = self.carImage;
	}
	if(self.carPrice != nil){
		dictionary[kCarNmCarPrice] = self.carPrice;
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
	if(self.carNm != nil){
		[aCoder encodeObject:self.carNm forKey:kCarNmCarNm];
	}
	if(self.carImage != nil){
		[aCoder encodeObject:self.carImage forKey:kCarNmCarImage];
	}
	if(self.carPrice != nil){
		[aCoder encodeObject:self.carPrice forKey:kCarNmCarPrice];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.carNm = [aDecoder decodeObjectForKey:kCarNmCarNm];
	self.carImage = [aDecoder decodeObjectForKey:kCarNmCarImage];
	self.carPrice = [aDecoder decodeObjectForKey:kCarNmCarPrice];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	CarNm *copy = [CarNm new];

	copy.carNm = [self.carNm copy];
	copy.carImage = [self.carImage copy];
	copy.carPrice = [self.carPrice copy];

	return copy;
}
@end