//
//	Guard.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Guard.h"

NSString *const kGuardEMMO = @"EMMO";
NSString *const kGuardPEPS = @"PEPS";
NSString *const kGuardPKE = @"PKE";
NSString *const kGuardExteriorDoor = @"exterior_door";
NSString *const kGuardLaserWelding = @"laser_welding";
NSString *const kGuardPianoLacquer = @"piano_lacquer";
NSString *const kGuardPowerSunroof = @"power_sunroof";
NSString *const kGuardSmartShark = @"smart_shark";
NSString *const kGuardSurroundedWindow = @"surrounded_window";
NSString *const kGuardTailCrossBright = @"tail_cross_bright";
NSString *const kGuardTrimPackage = @"trim_package";
NSString *const kGuardTrunklock = @"trunklock";

@interface Guard ()
@end
@implementation Guard




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kGuardEMMO] isKindOfClass:[NSNull class]]){
		self.eMMO = dictionary[kGuardEMMO];
	}	
	if(![dictionary[kGuardPEPS] isKindOfClass:[NSNull class]]){
		self.pEPS = dictionary[kGuardPEPS];
	}	
	if(![dictionary[kGuardPKE] isKindOfClass:[NSNull class]]){
		self.pKE = dictionary[kGuardPKE];
	}	
	if(![dictionary[kGuardExteriorDoor] isKindOfClass:[NSNull class]]){
		self.exteriorDoor = dictionary[kGuardExteriorDoor];
	}	
	if(![dictionary[kGuardLaserWelding] isKindOfClass:[NSNull class]]){
		self.laserWelding = dictionary[kGuardLaserWelding];
	}	
	if(![dictionary[kGuardPianoLacquer] isKindOfClass:[NSNull class]]){
		self.pianoLacquer = dictionary[kGuardPianoLacquer];
	}	
	if(![dictionary[kGuardPowerSunroof] isKindOfClass:[NSNull class]]){
		self.powerSunroof = dictionary[kGuardPowerSunroof];
	}	
	if(![dictionary[kGuardSmartShark] isKindOfClass:[NSNull class]]){
		self.smartShark = dictionary[kGuardSmartShark];
	}	
	if(![dictionary[kGuardSurroundedWindow] isKindOfClass:[NSNull class]]){
		self.surroundedWindow = dictionary[kGuardSurroundedWindow];
	}	
	if(![dictionary[kGuardTailCrossBright] isKindOfClass:[NSNull class]]){
		self.tailCrossBright = dictionary[kGuardTailCrossBright];
	}	
	if(![dictionary[kGuardTrimPackage] isKindOfClass:[NSNull class]]){
		self.trimPackage = dictionary[kGuardTrimPackage];
	}	
	if(![dictionary[kGuardTrunklock] isKindOfClass:[NSNull class]]){
		self.trunklock = dictionary[kGuardTrunklock];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.eMMO != nil){
		dictionary[kGuardEMMO] = self.eMMO;
	}
	if(self.pEPS != nil){
		dictionary[kGuardPEPS] = self.pEPS;
	}
	if(self.pKE != nil){
		dictionary[kGuardPKE] = self.pKE;
	}
	if(self.exteriorDoor != nil){
		dictionary[kGuardExteriorDoor] = self.exteriorDoor;
	}
	if(self.laserWelding != nil){
		dictionary[kGuardLaserWelding] = self.laserWelding;
	}
	if(self.pianoLacquer != nil){
		dictionary[kGuardPianoLacquer] = self.pianoLacquer;
	}
	if(self.powerSunroof != nil){
		dictionary[kGuardPowerSunroof] = self.powerSunroof;
	}
	if(self.smartShark != nil){
		dictionary[kGuardSmartShark] = self.smartShark;
	}
	if(self.surroundedWindow != nil){
		dictionary[kGuardSurroundedWindow] = self.surroundedWindow;
	}
	if(self.tailCrossBright != nil){
		dictionary[kGuardTailCrossBright] = self.tailCrossBright;
	}
	if(self.trimPackage != nil){
		dictionary[kGuardTrimPackage] = self.trimPackage;
	}
	if(self.trunklock != nil){
		dictionary[kGuardTrunklock] = self.trunklock;
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
	if(self.eMMO != nil){
		[aCoder encodeObject:self.eMMO forKey:kGuardEMMO];
	}
	if(self.pEPS != nil){
		[aCoder encodeObject:self.pEPS forKey:kGuardPEPS];
	}
	if(self.pKE != nil){
		[aCoder encodeObject:self.pKE forKey:kGuardPKE];
	}
	if(self.exteriorDoor != nil){
		[aCoder encodeObject:self.exteriorDoor forKey:kGuardExteriorDoor];
	}
	if(self.laserWelding != nil){
		[aCoder encodeObject:self.laserWelding forKey:kGuardLaserWelding];
	}
	if(self.pianoLacquer != nil){
		[aCoder encodeObject:self.pianoLacquer forKey:kGuardPianoLacquer];
	}
	if(self.powerSunroof != nil){
		[aCoder encodeObject:self.powerSunroof forKey:kGuardPowerSunroof];
	}
	if(self.smartShark != nil){
		[aCoder encodeObject:self.smartShark forKey:kGuardSmartShark];
	}
	if(self.surroundedWindow != nil){
		[aCoder encodeObject:self.surroundedWindow forKey:kGuardSurroundedWindow];
	}
	if(self.tailCrossBright != nil){
		[aCoder encodeObject:self.tailCrossBright forKey:kGuardTailCrossBright];
	}
	if(self.trimPackage != nil){
		[aCoder encodeObject:self.trimPackage forKey:kGuardTrimPackage];
	}
	if(self.trunklock != nil){
		[aCoder encodeObject:self.trunklock forKey:kGuardTrunklock];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.eMMO = [aDecoder decodeObjectForKey:kGuardEMMO];
	self.pEPS = [aDecoder decodeObjectForKey:kGuardPEPS];
	self.pKE = [aDecoder decodeObjectForKey:kGuardPKE];
	self.exteriorDoor = [aDecoder decodeObjectForKey:kGuardExteriorDoor];
	self.laserWelding = [aDecoder decodeObjectForKey:kGuardLaserWelding];
	self.pianoLacquer = [aDecoder decodeObjectForKey:kGuardPianoLacquer];
	self.powerSunroof = [aDecoder decodeObjectForKey:kGuardPowerSunroof];
	self.smartShark = [aDecoder decodeObjectForKey:kGuardSmartShark];
	self.surroundedWindow = [aDecoder decodeObjectForKey:kGuardSurroundedWindow];
	self.tailCrossBright = [aDecoder decodeObjectForKey:kGuardTailCrossBright];
	self.trimPackage = [aDecoder decodeObjectForKey:kGuardTrimPackage];
	self.trunklock = [aDecoder decodeObjectForKey:kGuardTrunklock];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Guard *copy = [Guard new];

	copy.eMMO = [self.eMMO copy];
	copy.pEPS = [self.pEPS copy];
	copy.pKE = [self.pKE copy];
	copy.exteriorDoor = [self.exteriorDoor copy];
	copy.laserWelding = [self.laserWelding copy];
	copy.pianoLacquer = [self.pianoLacquer copy];
	copy.powerSunroof = [self.powerSunroof copy];
	copy.smartShark = [self.smartShark copy];
	copy.surroundedWindow = [self.surroundedWindow copy];
	copy.tailCrossBright = [self.tailCrossBright copy];
	copy.trimPackage = [self.trimPackage copy];
	copy.trunklock = [self.trunklock copy];

	return copy;
}
@end