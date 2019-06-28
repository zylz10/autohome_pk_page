//
//	Led.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Led.h"

NSString *const kLedAutoLight = @"auto_light";
NSString *const kLedDippedHeadlight = @"dipped_headlight";
NSString *const kLedDrivingLamp = @"driving_lamp";
NSString *const kLedHeadlightsAdjustable = @"headlights_adjustable";
NSString *const kLedHeadlightsForget = @"headlights_forget";
NSString *const kLedHighBeam = @"high_beam";
NSString *const kLedLightsLreathing = @"lights_lreathing";
NSString *const kLedReadingLight = @"reading_light";

@interface Led ()
@end
@implementation Led




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kLedAutoLight] isKindOfClass:[NSNull class]]){
		self.autoLight = dictionary[kLedAutoLight];
	}	
	if(![dictionary[kLedDippedHeadlight] isKindOfClass:[NSNull class]]){
		self.dippedHeadlight = dictionary[kLedDippedHeadlight];
	}	
	if(![dictionary[kLedDrivingLamp] isKindOfClass:[NSNull class]]){
		self.drivingLamp = dictionary[kLedDrivingLamp];
	}	
	if(![dictionary[kLedHeadlightsAdjustable] isKindOfClass:[NSNull class]]){
		self.headlightsAdjustable = dictionary[kLedHeadlightsAdjustable];
	}	
	if(![dictionary[kLedHeadlightsForget] isKindOfClass:[NSNull class]]){
		self.headlightsForget = dictionary[kLedHeadlightsForget];
	}	
	if(![dictionary[kLedHighBeam] isKindOfClass:[NSNull class]]){
		self.highBeam = dictionary[kLedHighBeam];
	}	
	if(![dictionary[kLedLightsLreathing] isKindOfClass:[NSNull class]]){
		self.lightsLreathing = dictionary[kLedLightsLreathing];
	}	
	if(![dictionary[kLedReadingLight] isKindOfClass:[NSNull class]]){
		self.readingLight = dictionary[kLedReadingLight];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.autoLight != nil){
		dictionary[kLedAutoLight] = self.autoLight;
	}
	if(self.dippedHeadlight != nil){
		dictionary[kLedDippedHeadlight] = self.dippedHeadlight;
	}
	if(self.drivingLamp != nil){
		dictionary[kLedDrivingLamp] = self.drivingLamp;
	}
	if(self.headlightsAdjustable != nil){
		dictionary[kLedHeadlightsAdjustable] = self.headlightsAdjustable;
	}
	if(self.headlightsForget != nil){
		dictionary[kLedHeadlightsForget] = self.headlightsForget;
	}
	if(self.highBeam != nil){
		dictionary[kLedHighBeam] = self.highBeam;
	}
	if(self.lightsLreathing != nil){
		dictionary[kLedLightsLreathing] = self.lightsLreathing;
	}
	if(self.readingLight != nil){
		dictionary[kLedReadingLight] = self.readingLight;
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
	if(self.autoLight != nil){
		[aCoder encodeObject:self.autoLight forKey:kLedAutoLight];
	}
	if(self.dippedHeadlight != nil){
		[aCoder encodeObject:self.dippedHeadlight forKey:kLedDippedHeadlight];
	}
	if(self.drivingLamp != nil){
		[aCoder encodeObject:self.drivingLamp forKey:kLedDrivingLamp];
	}
	if(self.headlightsAdjustable != nil){
		[aCoder encodeObject:self.headlightsAdjustable forKey:kLedHeadlightsAdjustable];
	}
	if(self.headlightsForget != nil){
		[aCoder encodeObject:self.headlightsForget forKey:kLedHeadlightsForget];
	}
	if(self.highBeam != nil){
		[aCoder encodeObject:self.highBeam forKey:kLedHighBeam];
	}
	if(self.lightsLreathing != nil){
		[aCoder encodeObject:self.lightsLreathing forKey:kLedLightsLreathing];
	}
	if(self.readingLight != nil){
		[aCoder encodeObject:self.readingLight forKey:kLedReadingLight];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.autoLight = [aDecoder decodeObjectForKey:kLedAutoLight];
	self.dippedHeadlight = [aDecoder decodeObjectForKey:kLedDippedHeadlight];
	self.drivingLamp = [aDecoder decodeObjectForKey:kLedDrivingLamp];
	self.headlightsAdjustable = [aDecoder decodeObjectForKey:kLedHeadlightsAdjustable];
	self.headlightsForget = [aDecoder decodeObjectForKey:kLedHeadlightsForget];
	self.highBeam = [aDecoder decodeObjectForKey:kLedHighBeam];
	self.lightsLreathing = [aDecoder decodeObjectForKey:kLedLightsLreathing];
	self.readingLight = [aDecoder decodeObjectForKey:kLedReadingLight];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Led *copy = [Led new];

	copy.autoLight = [self.autoLight copy];
	copy.dippedHeadlight = [self.dippedHeadlight copy];
	copy.drivingLamp = [self.drivingLamp copy];
	copy.headlightsAdjustable = [self.headlightsAdjustable copy];
	copy.headlightsForget = [self.headlightsForget copy];
	copy.highBeam = [self.highBeam copy];
	copy.lightsLreathing = [self.lightsLreathing copy];
	copy.readingLight = [self.readingLight copy];

	return copy;
}
@end