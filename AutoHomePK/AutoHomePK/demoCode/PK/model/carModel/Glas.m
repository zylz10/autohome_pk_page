//
//	Glas.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Glas.h"

NSString *const kGlasElectricAdjusting = @"electric_adjusting";
NSString *const kGlasElectricFolding = @"electric_folding";
NSString *const kGlasInterceptingGlass = @"intercepting_glass";
NSString *const kGlasMirrorAutomatically = @"mirror_automatically";
NSString *const kGlasMirrorHeated = @"mirror_heated";
NSString *const kGlasMirrorMemory = @"mirror_memory";
NSString *const kGlasPowerWindow = @"power_window";
NSString *const kGlasWindowAdjustable = @"window_adjustable";
NSString *const kGlasWindowAnti = @"window_anti";

@interface Glas ()
@end
@implementation Glas




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kGlasElectricAdjusting] isKindOfClass:[NSNull class]]){
		self.electricAdjusting = dictionary[kGlasElectricAdjusting];
	}	
	if(![dictionary[kGlasElectricFolding] isKindOfClass:[NSNull class]]){
		self.electricFolding = dictionary[kGlasElectricFolding];
	}	
	if(![dictionary[kGlasInterceptingGlass] isKindOfClass:[NSNull class]]){
		self.interceptingGlass = dictionary[kGlasInterceptingGlass];
	}	
	if(![dictionary[kGlasMirrorAutomatically] isKindOfClass:[NSNull class]]){
		self.mirrorAutomatically = dictionary[kGlasMirrorAutomatically];
	}	
	if(![dictionary[kGlasMirrorHeated] isKindOfClass:[NSNull class]]){
		self.mirrorHeated = dictionary[kGlasMirrorHeated];
	}	
	if(![dictionary[kGlasMirrorMemory] isKindOfClass:[NSNull class]]){
		self.mirrorMemory = dictionary[kGlasMirrorMemory];
	}	
	if(![dictionary[kGlasPowerWindow] isKindOfClass:[NSNull class]]){
		self.powerWindow = dictionary[kGlasPowerWindow];
	}	
	if(![dictionary[kGlasWindowAdjustable] isKindOfClass:[NSNull class]]){
		self.windowAdjustable = dictionary[kGlasWindowAdjustable];
	}	
	if(![dictionary[kGlasWindowAnti] isKindOfClass:[NSNull class]]){
		self.windowAnti = dictionary[kGlasWindowAnti];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.electricAdjusting != nil){
		dictionary[kGlasElectricAdjusting] = self.electricAdjusting;
	}
	if(self.electricFolding != nil){
		dictionary[kGlasElectricFolding] = self.electricFolding;
	}
	if(self.interceptingGlass != nil){
		dictionary[kGlasInterceptingGlass] = self.interceptingGlass;
	}
	if(self.mirrorAutomatically != nil){
		dictionary[kGlasMirrorAutomatically] = self.mirrorAutomatically;
	}
	if(self.mirrorHeated != nil){
		dictionary[kGlasMirrorHeated] = self.mirrorHeated;
	}
	if(self.mirrorMemory != nil){
		dictionary[kGlasMirrorMemory] = self.mirrorMemory;
	}
	if(self.powerWindow != nil){
		dictionary[kGlasPowerWindow] = self.powerWindow;
	}
	if(self.windowAdjustable != nil){
		dictionary[kGlasWindowAdjustable] = self.windowAdjustable;
	}
	if(self.windowAnti != nil){
		dictionary[kGlasWindowAnti] = self.windowAnti;
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
	if(self.electricAdjusting != nil){
		[aCoder encodeObject:self.electricAdjusting forKey:kGlasElectricAdjusting];
	}
	if(self.electricFolding != nil){
		[aCoder encodeObject:self.electricFolding forKey:kGlasElectricFolding];
	}
	if(self.interceptingGlass != nil){
		[aCoder encodeObject:self.interceptingGlass forKey:kGlasInterceptingGlass];
	}
	if(self.mirrorAutomatically != nil){
		[aCoder encodeObject:self.mirrorAutomatically forKey:kGlasMirrorAutomatically];
	}
	if(self.mirrorHeated != nil){
		[aCoder encodeObject:self.mirrorHeated forKey:kGlasMirrorHeated];
	}
	if(self.mirrorMemory != nil){
		[aCoder encodeObject:self.mirrorMemory forKey:kGlasMirrorMemory];
	}
	if(self.powerWindow != nil){
		[aCoder encodeObject:self.powerWindow forKey:kGlasPowerWindow];
	}
	if(self.windowAdjustable != nil){
		[aCoder encodeObject:self.windowAdjustable forKey:kGlasWindowAdjustable];
	}
	if(self.windowAnti != nil){
		[aCoder encodeObject:self.windowAnti forKey:kGlasWindowAnti];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.electricAdjusting = [aDecoder decodeObjectForKey:kGlasElectricAdjusting];
	self.electricFolding = [aDecoder decodeObjectForKey:kGlasElectricFolding];
	self.interceptingGlass = [aDecoder decodeObjectForKey:kGlasInterceptingGlass];
	self.mirrorAutomatically = [aDecoder decodeObjectForKey:kGlasMirrorAutomatically];
	self.mirrorHeated = [aDecoder decodeObjectForKey:kGlasMirrorHeated];
	self.mirrorMemory = [aDecoder decodeObjectForKey:kGlasMirrorMemory];
	self.powerWindow = [aDecoder decodeObjectForKey:kGlasPowerWindow];
	self.windowAdjustable = [aDecoder decodeObjectForKey:kGlasWindowAdjustable];
	self.windowAnti = [aDecoder decodeObjectForKey:kGlasWindowAnti];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Glas *copy = [Glas new];

	copy.electricAdjusting = [self.electricAdjusting copy];
	copy.electricFolding = [self.electricFolding copy];
	copy.interceptingGlass = [self.interceptingGlass copy];
	copy.mirrorAutomatically = [self.mirrorAutomatically copy];
	copy.mirrorHeated = [self.mirrorHeated copy];
	copy.mirrorMemory = [self.mirrorMemory copy];
	copy.powerWindow = [self.powerWindow copy];
	copy.windowAdjustable = [self.windowAdjustable copy];
	copy.windowAnti = [self.windowAnti copy];

	return copy;
}
@end