//
//	PKCarModel.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "PKCarModel.h"

NSString *const kPKCarModelAir = @"air";
NSString *const kPKCarModelAuxiliary = @"auxiliary";
NSString *const kPKCarModelBaseParameter = @"baseParameter";
NSString *const kPKCarModelCarBody = @"carBody";
NSString *const kPKCarModelCarNm = @"carNm";
NSString *const kPKCarModelChair = @"chair";
NSString *const kPKCarModelChassis = @"chassis";
NSString *const kPKCarModelEngine = @"engine";
NSString *const kPKCarModelGlass = @"glass";
NSString *const kPKCarModelGuard = @"guard";
NSString *const kPKCarModelInternal = @"internal";
NSString *const kPKCarModelLed = @"led";
NSString *const kPKCarModelMedia = @"media";
NSString *const kPKCarModelSafety = @"safety";
NSString *const kPKCarModelTransmission = @"transmission";
NSString *const kPKCarModelWheel = @"wheel";

@interface PKCarModel ()
@end
@implementation PKCarModel




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kPKCarModelAir] isKindOfClass:[NSNull class]]){
		self.air = [[Air alloc] initWithDictionary:dictionary[kPKCarModelAir]];
	}

	if(![dictionary[kPKCarModelAuxiliary] isKindOfClass:[NSNull class]]){
		self.auxiliary = [[Auxiliary alloc] initWithDictionary:dictionary[kPKCarModelAuxiliary]];
	}

	if(![dictionary[kPKCarModelBaseParameter] isKindOfClass:[NSNull class]]){
		self.baseParameter = [[BaseParameter alloc] initWithDictionary:dictionary[kPKCarModelBaseParameter]];
	}

	if(![dictionary[kPKCarModelCarBody] isKindOfClass:[NSNull class]]){
		self.carBody = [[CarBody alloc] initWithDictionary:dictionary[kPKCarModelCarBody]];
	}

	if(![dictionary[kPKCarModelCarNm] isKindOfClass:[NSNull class]]){
		self.carNm = [[CarNm alloc] initWithDictionary:dictionary[kPKCarModelCarNm]];
	}

	if(![dictionary[kPKCarModelChair] isKindOfClass:[NSNull class]]){
		self.chair = [[Chair alloc] initWithDictionary:dictionary[kPKCarModelChair]];
	}

	if(![dictionary[kPKCarModelChassis] isKindOfClass:[NSNull class]]){
		self.chassis = [[Chassi alloc] initWithDictionary:dictionary[kPKCarModelChassis]];
	}

	if(![dictionary[kPKCarModelEngine] isKindOfClass:[NSNull class]]){
		self.engine = [[Engine alloc] initWithDictionary:dictionary[kPKCarModelEngine]];
	}

	if(![dictionary[kPKCarModelGlass] isKindOfClass:[NSNull class]]){
		self.glass = [[Glas alloc] initWithDictionary:dictionary[kPKCarModelGlass]];
	}

	if(![dictionary[kPKCarModelGuard] isKindOfClass:[NSNull class]]){
		self.guard = [[Guard alloc] initWithDictionary:dictionary[kPKCarModelGuard]];
	}

	if(![dictionary[kPKCarModelInternal] isKindOfClass:[NSNull class]]){
		self.internal = [[Internal alloc] initWithDictionary:dictionary[kPKCarModelInternal]];
	}

	if(![dictionary[kPKCarModelLed] isKindOfClass:[NSNull class]]){
		self.led = [[Led alloc] initWithDictionary:dictionary[kPKCarModelLed]];
	}

	if(![dictionary[kPKCarModelMedia] isKindOfClass:[NSNull class]]){
		self.media = [[Media alloc] initWithDictionary:dictionary[kPKCarModelMedia]];
	}

	if(![dictionary[kPKCarModelSafety] isKindOfClass:[NSNull class]]){
		self.safety = [[Safety alloc] initWithDictionary:dictionary[kPKCarModelSafety]];
	}

	if(![dictionary[kPKCarModelTransmission] isKindOfClass:[NSNull class]]){
		self.transmission = [[Transmission alloc] initWithDictionary:dictionary[kPKCarModelTransmission]];
	}

	if(![dictionary[kPKCarModelWheel] isKindOfClass:[NSNull class]]){
		self.wheel = [[Wheel alloc] initWithDictionary:dictionary[kPKCarModelWheel]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.air != nil){
		dictionary[kPKCarModelAir] = [self.air toDictionary];
	}
	if(self.auxiliary != nil){
		dictionary[kPKCarModelAuxiliary] = [self.auxiliary toDictionary];
	}
	if(self.baseParameter != nil){
		dictionary[kPKCarModelBaseParameter] = [self.baseParameter toDictionary];
	}
	if(self.carBody != nil){
		dictionary[kPKCarModelCarBody] = [self.carBody toDictionary];
	}
	if(self.carNm != nil){
		dictionary[kPKCarModelCarNm] = [self.carNm toDictionary];
	}
	if(self.chair != nil){
		dictionary[kPKCarModelChair] = [self.chair toDictionary];
	}
	if(self.chassis != nil){
		dictionary[kPKCarModelChassis] = [self.chassis toDictionary];
	}
	if(self.engine != nil){
		dictionary[kPKCarModelEngine] = [self.engine toDictionary];
	}
	if(self.glass != nil){
		dictionary[kPKCarModelGlass] = [self.glass toDictionary];
	}
	if(self.guard != nil){
		dictionary[kPKCarModelGuard] = [self.guard toDictionary];
	}
	if(self.internal != nil){
		dictionary[kPKCarModelInternal] = [self.internal toDictionary];
	}
	if(self.led != nil){
		dictionary[kPKCarModelLed] = [self.led toDictionary];
	}
	if(self.media != nil){
		dictionary[kPKCarModelMedia] = [self.media toDictionary];
	}
	if(self.safety != nil){
		dictionary[kPKCarModelSafety] = [self.safety toDictionary];
	}
	if(self.transmission != nil){
		dictionary[kPKCarModelTransmission] = [self.transmission toDictionary];
	}
	if(self.wheel != nil){
		dictionary[kPKCarModelWheel] = [self.wheel toDictionary];
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
	if(self.air != nil){
		[aCoder encodeObject:self.air forKey:kPKCarModelAir];
	}
	if(self.auxiliary != nil){
		[aCoder encodeObject:self.auxiliary forKey:kPKCarModelAuxiliary];
	}
	if(self.baseParameter != nil){
		[aCoder encodeObject:self.baseParameter forKey:kPKCarModelBaseParameter];
	}
	if(self.carBody != nil){
		[aCoder encodeObject:self.carBody forKey:kPKCarModelCarBody];
	}
	if(self.carNm != nil){
		[aCoder encodeObject:self.carNm forKey:kPKCarModelCarNm];
	}
	if(self.chair != nil){
		[aCoder encodeObject:self.chair forKey:kPKCarModelChair];
	}
	if(self.chassis != nil){
		[aCoder encodeObject:self.chassis forKey:kPKCarModelChassis];
	}
	if(self.engine != nil){
		[aCoder encodeObject:self.engine forKey:kPKCarModelEngine];
	}
	if(self.glass != nil){
		[aCoder encodeObject:self.glass forKey:kPKCarModelGlass];
	}
	if(self.guard != nil){
		[aCoder encodeObject:self.guard forKey:kPKCarModelGuard];
	}
	if(self.internal != nil){
		[aCoder encodeObject:self.internal forKey:kPKCarModelInternal];
	}
	if(self.led != nil){
		[aCoder encodeObject:self.led forKey:kPKCarModelLed];
	}
	if(self.media != nil){
		[aCoder encodeObject:self.media forKey:kPKCarModelMedia];
	}
	if(self.safety != nil){
		[aCoder encodeObject:self.safety forKey:kPKCarModelSafety];
	}
	if(self.transmission != nil){
		[aCoder encodeObject:self.transmission forKey:kPKCarModelTransmission];
	}
	if(self.wheel != nil){
		[aCoder encodeObject:self.wheel forKey:kPKCarModelWheel];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.air = [aDecoder decodeObjectForKey:kPKCarModelAir];
	self.auxiliary = [aDecoder decodeObjectForKey:kPKCarModelAuxiliary];
	self.baseParameter = [aDecoder decodeObjectForKey:kPKCarModelBaseParameter];
	self.carBody = [aDecoder decodeObjectForKey:kPKCarModelCarBody];
	self.carNm = [aDecoder decodeObjectForKey:kPKCarModelCarNm];
	self.chair = [aDecoder decodeObjectForKey:kPKCarModelChair];
	self.chassis = [aDecoder decodeObjectForKey:kPKCarModelChassis];
	self.engine = [aDecoder decodeObjectForKey:kPKCarModelEngine];
	self.glass = [aDecoder decodeObjectForKey:kPKCarModelGlass];
	self.guard = [aDecoder decodeObjectForKey:kPKCarModelGuard];
	self.internal = [aDecoder decodeObjectForKey:kPKCarModelInternal];
	self.led = [aDecoder decodeObjectForKey:kPKCarModelLed];
	self.media = [aDecoder decodeObjectForKey:kPKCarModelMedia];
	self.safety = [aDecoder decodeObjectForKey:kPKCarModelSafety];
	self.transmission = [aDecoder decodeObjectForKey:kPKCarModelTransmission];
	self.wheel = [aDecoder decodeObjectForKey:kPKCarModelWheel];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	PKCarModel *copy = [PKCarModel new];

	copy.air = [self.air copy];
	copy.auxiliary = [self.auxiliary copy];
	copy.baseParameter = [self.baseParameter copy];
	copy.carBody = [self.carBody copy];
	copy.carNm = [self.carNm copy];
	copy.chair = [self.chair copy];
	copy.chassis = [self.chassis copy];
	copy.engine = [self.engine copy];
	copy.glass = [self.glass copy];
	copy.guard = [self.guard copy];
	copy.internal = [self.internal copy];
	copy.led = [self.led copy];
	copy.media = [self.media copy];
	copy.safety = [self.safety copy];
	copy.transmission = [self.transmission copy];
	copy.wheel = [self.wheel copy];

	return copy;
}
@end