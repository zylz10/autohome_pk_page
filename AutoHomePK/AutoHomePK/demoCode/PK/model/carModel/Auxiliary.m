//
//	Auxiliary.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Auxiliary.h"

NSString *const kAuxiliaryCCS = @"CCS";
NSString *const kAuxiliaryGSG = @"GSG";
NSString *const kAuxiliaryHAC = @"HAC";
NSString *const kAuxiliaryAdaptiveCruiseControl = @"adaptive_cruise_control";
NSString *const kAuxiliaryEnergyRecoverySystem = @"energy_recovery_system";
NSString *const kAuxiliaryFrontAndbackParkingRadar = @"frontAndback_parking_radar";
NSString *const kAuxiliaryRightVisualSystem = @"right_visual_system";
NSString *const kAuxiliaryRverseVideoImage = @"rverse_video_image";
NSString *const kAuxiliaryShiftAlertSystem = @"shift_alert_system";

@interface Auxiliary ()
@end
@implementation Auxiliary




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kAuxiliaryCCS] isKindOfClass:[NSNull class]]){
		self.cCS = dictionary[kAuxiliaryCCS];
	}	
	if(![dictionary[kAuxiliaryGSG] isKindOfClass:[NSNull class]]){
		self.gSG = dictionary[kAuxiliaryGSG];
	}	
	if(![dictionary[kAuxiliaryHAC] isKindOfClass:[NSNull class]]){
		self.hAC = dictionary[kAuxiliaryHAC];
	}	
	if(![dictionary[kAuxiliaryAdaptiveCruiseControl] isKindOfClass:[NSNull class]]){
		self.adaptiveCruiseControl = dictionary[kAuxiliaryAdaptiveCruiseControl];
	}	
	if(![dictionary[kAuxiliaryEnergyRecoverySystem] isKindOfClass:[NSNull class]]){
		self.energyRecoverySystem = dictionary[kAuxiliaryEnergyRecoverySystem];
	}	
	if(![dictionary[kAuxiliaryFrontAndbackParkingRadar] isKindOfClass:[NSNull class]]){
		self.frontAndbackParkingRadar = dictionary[kAuxiliaryFrontAndbackParkingRadar];
	}	
	if(![dictionary[kAuxiliaryRightVisualSystem] isKindOfClass:[NSNull class]]){
		self.rightVisualSystem = dictionary[kAuxiliaryRightVisualSystem];
	}	
	if(![dictionary[kAuxiliaryRverseVideoImage] isKindOfClass:[NSNull class]]){
		self.rverseVideoImage = dictionary[kAuxiliaryRverseVideoImage];
	}	
	if(![dictionary[kAuxiliaryShiftAlertSystem] isKindOfClass:[NSNull class]]){
		self.shiftAlertSystem = dictionary[kAuxiliaryShiftAlertSystem];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.cCS != nil){
		dictionary[kAuxiliaryCCS] = self.cCS;
	}
	if(self.gSG != nil){
		dictionary[kAuxiliaryGSG] = self.gSG;
	}
	if(self.hAC != nil){
		dictionary[kAuxiliaryHAC] = self.hAC;
	}
	if(self.adaptiveCruiseControl != nil){
		dictionary[kAuxiliaryAdaptiveCruiseControl] = self.adaptiveCruiseControl;
	}
	if(self.energyRecoverySystem != nil){
		dictionary[kAuxiliaryEnergyRecoverySystem] = self.energyRecoverySystem;
	}
	if(self.frontAndbackParkingRadar != nil){
		dictionary[kAuxiliaryFrontAndbackParkingRadar] = self.frontAndbackParkingRadar;
	}
	if(self.rightVisualSystem != nil){
		dictionary[kAuxiliaryRightVisualSystem] = self.rightVisualSystem;
	}
	if(self.rverseVideoImage != nil){
		dictionary[kAuxiliaryRverseVideoImage] = self.rverseVideoImage;
	}
	if(self.shiftAlertSystem != nil){
		dictionary[kAuxiliaryShiftAlertSystem] = self.shiftAlertSystem;
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
	if(self.cCS != nil){
		[aCoder encodeObject:self.cCS forKey:kAuxiliaryCCS];
	}
	if(self.gSG != nil){
		[aCoder encodeObject:self.gSG forKey:kAuxiliaryGSG];
	}
	if(self.hAC != nil){
		[aCoder encodeObject:self.hAC forKey:kAuxiliaryHAC];
	}
	if(self.adaptiveCruiseControl != nil){
		[aCoder encodeObject:self.adaptiveCruiseControl forKey:kAuxiliaryAdaptiveCruiseControl];
	}
	if(self.energyRecoverySystem != nil){
		[aCoder encodeObject:self.energyRecoverySystem forKey:kAuxiliaryEnergyRecoverySystem];
	}
	if(self.frontAndbackParkingRadar != nil){
		[aCoder encodeObject:self.frontAndbackParkingRadar forKey:kAuxiliaryFrontAndbackParkingRadar];
	}
	if(self.rightVisualSystem != nil){
		[aCoder encodeObject:self.rightVisualSystem forKey:kAuxiliaryRightVisualSystem];
	}
	if(self.rverseVideoImage != nil){
		[aCoder encodeObject:self.rverseVideoImage forKey:kAuxiliaryRverseVideoImage];
	}
	if(self.shiftAlertSystem != nil){
		[aCoder encodeObject:self.shiftAlertSystem forKey:kAuxiliaryShiftAlertSystem];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.cCS = [aDecoder decodeObjectForKey:kAuxiliaryCCS];
	self.gSG = [aDecoder decodeObjectForKey:kAuxiliaryGSG];
	self.hAC = [aDecoder decodeObjectForKey:kAuxiliaryHAC];
	self.adaptiveCruiseControl = [aDecoder decodeObjectForKey:kAuxiliaryAdaptiveCruiseControl];
	self.energyRecoverySystem = [aDecoder decodeObjectForKey:kAuxiliaryEnergyRecoverySystem];
	self.frontAndbackParkingRadar = [aDecoder decodeObjectForKey:kAuxiliaryFrontAndbackParkingRadar];
	self.rightVisualSystem = [aDecoder decodeObjectForKey:kAuxiliaryRightVisualSystem];
	self.rverseVideoImage = [aDecoder decodeObjectForKey:kAuxiliaryRverseVideoImage];
	self.shiftAlertSystem = [aDecoder decodeObjectForKey:kAuxiliaryShiftAlertSystem];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Auxiliary *copy = [Auxiliary new];

	copy.cCS = [self.cCS copy];
	copy.gSG = [self.gSG copy];
	copy.hAC = [self.hAC copy];
	copy.adaptiveCruiseControl = [self.adaptiveCruiseControl copy];
	copy.energyRecoverySystem = [self.energyRecoverySystem copy];
	copy.frontAndbackParkingRadar = [self.frontAndbackParkingRadar copy];
	copy.rightVisualSystem = [self.rightVisualSystem copy];
	copy.rverseVideoImage = [self.rverseVideoImage copy];
	copy.shiftAlertSystem = [self.shiftAlertSystem copy];

	return copy;
}
@end