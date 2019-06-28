//
//	Safety.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Safety.h"

NSString *const kSafetyABS = @"ABS";
NSString *const kSafetyASR = @"ASR";
NSString *const kSafetyEBA = @"EBA";
NSString *const kSafetyEBD = @"EBD";
NSString *const kSafetyESC = @"ESC";
NSString *const kSafetyESS = @"ESS";
NSString *const kSafetyHEEAB = @"HEEAB";
NSString *const kSafetySAB = @"SAB";
NSString *const kSafetySRS = @"SRS";
NSString *const kSafetyBackDoorLock = @"back_door_lock";
NSString *const kSafetyEngineCovered = @"engine_covered";
NSString *const kSafetyFrontSeatBelt = @"front_seat_belt";
NSString *const kSafetyFrontSeatBeltYj = @"front_seat_belt_yj";
NSString *const kSafetyHeadAirbag = @"head_airbag";
NSString *const kSafetyIsofix = @"isofix";
NSString *const kSafetySafetyBeltHint = @"safety_belt_hint";
NSString *const kSafetyTirePressure = @"tire_pressure";

@interface Safety ()
@end
@implementation Safety




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kSafetyABS] isKindOfClass:[NSNull class]]){
		self.aBS = dictionary[kSafetyABS];
	}	
	if(![dictionary[kSafetyASR] isKindOfClass:[NSNull class]]){
		self.aSR = dictionary[kSafetyASR];
	}	
	if(![dictionary[kSafetyEBA] isKindOfClass:[NSNull class]]){
		self.eBA = dictionary[kSafetyEBA];
	}	
	if(![dictionary[kSafetyEBD] isKindOfClass:[NSNull class]]){
		self.eBD = dictionary[kSafetyEBD];
	}	
	if(![dictionary[kSafetyESC] isKindOfClass:[NSNull class]]){
		self.eSC = dictionary[kSafetyESC];
	}	
	if(![dictionary[kSafetyESS] isKindOfClass:[NSNull class]]){
		self.eSS = dictionary[kSafetyESS];
	}	
	if(![dictionary[kSafetyHEEAB] isKindOfClass:[NSNull class]]){
		self.hEEAB = dictionary[kSafetyHEEAB];
	}	
	if(![dictionary[kSafetySAB] isKindOfClass:[NSNull class]]){
		self.sAB = dictionary[kSafetySAB];
	}	
	if(![dictionary[kSafetySRS] isKindOfClass:[NSNull class]]){
		self.sRS = dictionary[kSafetySRS];
	}	
	if(![dictionary[kSafetyBackDoorLock] isKindOfClass:[NSNull class]]){
		self.backDoorLock = dictionary[kSafetyBackDoorLock];
	}	
	if(![dictionary[kSafetyEngineCovered] isKindOfClass:[NSNull class]]){
		self.engineCovered = dictionary[kSafetyEngineCovered];
	}	
	if(![dictionary[kSafetyFrontSeatBelt] isKindOfClass:[NSNull class]]){
		self.frontSeatBelt = dictionary[kSafetyFrontSeatBelt];
	}	
	if(![dictionary[kSafetyFrontSeatBeltYj] isKindOfClass:[NSNull class]]){
		self.frontSeatBeltYj = dictionary[kSafetyFrontSeatBeltYj];
	}	
	if(![dictionary[kSafetyHeadAirbag] isKindOfClass:[NSNull class]]){
		self.headAirbag = dictionary[kSafetyHeadAirbag];
	}	
	if(![dictionary[kSafetyIsofix] isKindOfClass:[NSNull class]]){
		self.isofix = dictionary[kSafetyIsofix];
	}	
	if(![dictionary[kSafetySafetyBeltHint] isKindOfClass:[NSNull class]]){
		self.safetyBeltHint = dictionary[kSafetySafetyBeltHint];
	}	
	if(![dictionary[kSafetyTirePressure] isKindOfClass:[NSNull class]]){
		self.tirePressure = dictionary[kSafetyTirePressure];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.aBS != nil){
		dictionary[kSafetyABS] = self.aBS;
	}
	if(self.aSR != nil){
		dictionary[kSafetyASR] = self.aSR;
	}
	if(self.eBA != nil){
		dictionary[kSafetyEBA] = self.eBA;
	}
	if(self.eBD != nil){
		dictionary[kSafetyEBD] = self.eBD;
	}
	if(self.eSC != nil){
		dictionary[kSafetyESC] = self.eSC;
	}
	if(self.eSS != nil){
		dictionary[kSafetyESS] = self.eSS;
	}
	if(self.hEEAB != nil){
		dictionary[kSafetyHEEAB] = self.hEEAB;
	}
	if(self.sAB != nil){
		dictionary[kSafetySAB] = self.sAB;
	}
	if(self.sRS != nil){
		dictionary[kSafetySRS] = self.sRS;
	}
	if(self.backDoorLock != nil){
		dictionary[kSafetyBackDoorLock] = self.backDoorLock;
	}
	if(self.engineCovered != nil){
		dictionary[kSafetyEngineCovered] = self.engineCovered;
	}
	if(self.frontSeatBelt != nil){
		dictionary[kSafetyFrontSeatBelt] = self.frontSeatBelt;
	}
	if(self.frontSeatBeltYj != nil){
		dictionary[kSafetyFrontSeatBeltYj] = self.frontSeatBeltYj;
	}
	if(self.headAirbag != nil){
		dictionary[kSafetyHeadAirbag] = self.headAirbag;
	}
	if(self.isofix != nil){
		dictionary[kSafetyIsofix] = self.isofix;
	}
	if(self.safetyBeltHint != nil){
		dictionary[kSafetySafetyBeltHint] = self.safetyBeltHint;
	}
	if(self.tirePressure != nil){
		dictionary[kSafetyTirePressure] = self.tirePressure;
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
	if(self.aBS != nil){
		[aCoder encodeObject:self.aBS forKey:kSafetyABS];
	}
	if(self.aSR != nil){
		[aCoder encodeObject:self.aSR forKey:kSafetyASR];
	}
	if(self.eBA != nil){
		[aCoder encodeObject:self.eBA forKey:kSafetyEBA];
	}
	if(self.eBD != nil){
		[aCoder encodeObject:self.eBD forKey:kSafetyEBD];
	}
	if(self.eSC != nil){
		[aCoder encodeObject:self.eSC forKey:kSafetyESC];
	}
	if(self.eSS != nil){
		[aCoder encodeObject:self.eSS forKey:kSafetyESS];
	}
	if(self.hEEAB != nil){
		[aCoder encodeObject:self.hEEAB forKey:kSafetyHEEAB];
	}
	if(self.sAB != nil){
		[aCoder encodeObject:self.sAB forKey:kSafetySAB];
	}
	if(self.sRS != nil){
		[aCoder encodeObject:self.sRS forKey:kSafetySRS];
	}
	if(self.backDoorLock != nil){
		[aCoder encodeObject:self.backDoorLock forKey:kSafetyBackDoorLock];
	}
	if(self.engineCovered != nil){
		[aCoder encodeObject:self.engineCovered forKey:kSafetyEngineCovered];
	}
	if(self.frontSeatBelt != nil){
		[aCoder encodeObject:self.frontSeatBelt forKey:kSafetyFrontSeatBelt];
	}
	if(self.frontSeatBeltYj != nil){
		[aCoder encodeObject:self.frontSeatBeltYj forKey:kSafetyFrontSeatBeltYj];
	}
	if(self.headAirbag != nil){
		[aCoder encodeObject:self.headAirbag forKey:kSafetyHeadAirbag];
	}
	if(self.isofix != nil){
		[aCoder encodeObject:self.isofix forKey:kSafetyIsofix];
	}
	if(self.safetyBeltHint != nil){
		[aCoder encodeObject:self.safetyBeltHint forKey:kSafetySafetyBeltHint];
	}
	if(self.tirePressure != nil){
		[aCoder encodeObject:self.tirePressure forKey:kSafetyTirePressure];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.aBS = [aDecoder decodeObjectForKey:kSafetyABS];
	self.aSR = [aDecoder decodeObjectForKey:kSafetyASR];
	self.eBA = [aDecoder decodeObjectForKey:kSafetyEBA];
	self.eBD = [aDecoder decodeObjectForKey:kSafetyEBD];
	self.eSC = [aDecoder decodeObjectForKey:kSafetyESC];
	self.eSS = [aDecoder decodeObjectForKey:kSafetyESS];
	self.hEEAB = [aDecoder decodeObjectForKey:kSafetyHEEAB];
	self.sAB = [aDecoder decodeObjectForKey:kSafetySAB];
	self.sRS = [aDecoder decodeObjectForKey:kSafetySRS];
	self.backDoorLock = [aDecoder decodeObjectForKey:kSafetyBackDoorLock];
	self.engineCovered = [aDecoder decodeObjectForKey:kSafetyEngineCovered];
	self.frontSeatBelt = [aDecoder decodeObjectForKey:kSafetyFrontSeatBelt];
	self.frontSeatBeltYj = [aDecoder decodeObjectForKey:kSafetyFrontSeatBeltYj];
	self.headAirbag = [aDecoder decodeObjectForKey:kSafetyHeadAirbag];
	self.isofix = [aDecoder decodeObjectForKey:kSafetyIsofix];
	self.safetyBeltHint = [aDecoder decodeObjectForKey:kSafetySafetyBeltHint];
	self.tirePressure = [aDecoder decodeObjectForKey:kSafetyTirePressure];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Safety *copy = [Safety new];

	copy.aBS = [self.aBS copy];
	copy.aSR = [self.aSR copy];
	copy.eBA = [self.eBA copy];
	copy.eBD = [self.eBD copy];
	copy.eSC = [self.eSC copy];
	copy.eSS = [self.eSS copy];
	copy.hEEAB = [self.hEEAB copy];
	copy.sAB = [self.sAB copy];
	copy.sRS = [self.sRS copy];
	copy.backDoorLock = [self.backDoorLock copy];
	copy.engineCovered = [self.engineCovered copy];
	copy.frontSeatBelt = [self.frontSeatBelt copy];
	copy.frontSeatBeltYj = [self.frontSeatBeltYj copy];
	copy.headAirbag = [self.headAirbag copy];
	copy.isofix = [self.isofix copy];
	copy.safetyBeltHint = [self.safetyBeltHint copy];
	copy.tirePressure = [self.tirePressure copy];

	return copy;
}
@end