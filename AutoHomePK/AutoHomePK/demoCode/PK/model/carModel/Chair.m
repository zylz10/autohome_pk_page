//
//	Chair.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Chair.h"

NSString *const kChairAdjustSeat = @"adjust_seat";
NSString *const kChairBackCenterHeadrest = @"back_center_headrest";
NSString *const kChairCentreArmrest = @"centre_armrest";
NSString *const kChairElectricAdjustment = @"electric_adjustment";
NSString *const kChairRearStand = @"rear_stand";
NSString *const kChairSeatMaterial = @"seat_material";

@interface Chair ()
@end
@implementation Chair




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kChairAdjustSeat] isKindOfClass:[NSNull class]]){
		self.adjustSeat = dictionary[kChairAdjustSeat];
	}	
	if(![dictionary[kChairBackCenterHeadrest] isKindOfClass:[NSNull class]]){
		self.backCenterHeadrest = dictionary[kChairBackCenterHeadrest];
	}	
	if(![dictionary[kChairCentreArmrest] isKindOfClass:[NSNull class]]){
		self.centreArmrest = dictionary[kChairCentreArmrest];
	}	
	if(![dictionary[kChairElectricAdjustment] isKindOfClass:[NSNull class]]){
		self.electricAdjustment = dictionary[kChairElectricAdjustment];
	}	
	if(![dictionary[kChairRearStand] isKindOfClass:[NSNull class]]){
		self.rearStand = dictionary[kChairRearStand];
	}	
	if(![dictionary[kChairSeatMaterial] isKindOfClass:[NSNull class]]){
		self.seatMaterial = dictionary[kChairSeatMaterial];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.adjustSeat != nil){
		dictionary[kChairAdjustSeat] = self.adjustSeat;
	}
	if(self.backCenterHeadrest != nil){
		dictionary[kChairBackCenterHeadrest] = self.backCenterHeadrest;
	}
	if(self.centreArmrest != nil){
		dictionary[kChairCentreArmrest] = self.centreArmrest;
	}
	if(self.electricAdjustment != nil){
		dictionary[kChairElectricAdjustment] = self.electricAdjustment;
	}
	if(self.rearStand != nil){
		dictionary[kChairRearStand] = self.rearStand;
	}
	if(self.seatMaterial != nil){
		dictionary[kChairSeatMaterial] = self.seatMaterial;
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
	if(self.adjustSeat != nil){
		[aCoder encodeObject:self.adjustSeat forKey:kChairAdjustSeat];
	}
	if(self.backCenterHeadrest != nil){
		[aCoder encodeObject:self.backCenterHeadrest forKey:kChairBackCenterHeadrest];
	}
	if(self.centreArmrest != nil){
		[aCoder encodeObject:self.centreArmrest forKey:kChairCentreArmrest];
	}
	if(self.electricAdjustment != nil){
		[aCoder encodeObject:self.electricAdjustment forKey:kChairElectricAdjustment];
	}
	if(self.rearStand != nil){
		[aCoder encodeObject:self.rearStand forKey:kChairRearStand];
	}
	if(self.seatMaterial != nil){
		[aCoder encodeObject:self.seatMaterial forKey:kChairSeatMaterial];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.adjustSeat = [aDecoder decodeObjectForKey:kChairAdjustSeat];
	self.backCenterHeadrest = [aDecoder decodeObjectForKey:kChairBackCenterHeadrest];
	self.centreArmrest = [aDecoder decodeObjectForKey:kChairCentreArmrest];
	self.electricAdjustment = [aDecoder decodeObjectForKey:kChairElectricAdjustment];
	self.rearStand = [aDecoder decodeObjectForKey:kChairRearStand];
	self.seatMaterial = [aDecoder decodeObjectForKey:kChairSeatMaterial];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Chair *copy = [Chair new];

	copy.adjustSeat = [self.adjustSeat copy];
	copy.backCenterHeadrest = [self.backCenterHeadrest copy];
	copy.centreArmrest = [self.centreArmrest copy];
	copy.electricAdjustment = [self.electricAdjustment copy];
	copy.rearStand = [self.rearStand copy];
	copy.seatMaterial = [self.seatMaterial copy];

	return copy;
}
@end