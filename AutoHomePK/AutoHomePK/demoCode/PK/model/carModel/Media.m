//
//	Media.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Media.h"

NSString *const kMediaGPS = @"GPS";
NSString *const kMediaOTA = @"OTA";
NSString *const kMediaBackgroundService = @"background_service";
NSString *const kMediaCarNetworking = @"car_networking";
NSString *const kMediaCarTelephone = @"car_telephone";
NSString *const kMediaDisplayScreen = @"display_screen";
NSString *const kMediaExternalAudioInterface = @"external_audio_interface";
NSString *const kMediaInteractionSystem = @"interaction_system";
NSString *const kMediaRadioResources = @"radio_resources";
NSString *const kMediaRemoteQuery = @"remote_query";
NSString *const kMediaScreenSize = @"screen_size";
NSString *const kMediaSensus = @"sensus";
NSString *const kMediaSpeakerNumber = @"speaker_number";

@interface Media ()
@end
@implementation Media




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kMediaGPS] isKindOfClass:[NSNull class]]){
		self.gPS = dictionary[kMediaGPS];
	}	
	if(![dictionary[kMediaOTA] isKindOfClass:[NSNull class]]){
		self.oTA = dictionary[kMediaOTA];
	}	
	if(![dictionary[kMediaBackgroundService] isKindOfClass:[NSNull class]]){
		self.backgroundService = dictionary[kMediaBackgroundService];
	}	
	if(![dictionary[kMediaCarNetworking] isKindOfClass:[NSNull class]]){
		self.carNetworking = dictionary[kMediaCarNetworking];
	}	
	if(![dictionary[kMediaCarTelephone] isKindOfClass:[NSNull class]]){
		self.carTelephone = dictionary[kMediaCarTelephone];
	}	
	if(![dictionary[kMediaDisplayScreen] isKindOfClass:[NSNull class]]){
		self.displayScreen = dictionary[kMediaDisplayScreen];
	}	
	if(![dictionary[kMediaExternalAudioInterface] isKindOfClass:[NSNull class]]){
		self.externalAudioInterface = dictionary[kMediaExternalAudioInterface];
	}	
	if(![dictionary[kMediaInteractionSystem] isKindOfClass:[NSNull class]]){
		self.interactionSystem = dictionary[kMediaInteractionSystem];
	}	
	if(![dictionary[kMediaRadioResources] isKindOfClass:[NSNull class]]){
		self.radioResources = dictionary[kMediaRadioResources];
	}	
	if(![dictionary[kMediaRemoteQuery] isKindOfClass:[NSNull class]]){
		self.remoteQuery = dictionary[kMediaRemoteQuery];
	}	
	if(![dictionary[kMediaScreenSize] isKindOfClass:[NSNull class]]){
		self.screenSize = dictionary[kMediaScreenSize];
	}	
	if(![dictionary[kMediaSensus] isKindOfClass:[NSNull class]]){
		self.sensus = dictionary[kMediaSensus];
	}	
	if(![dictionary[kMediaSpeakerNumber] isKindOfClass:[NSNull class]]){
		self.speakerNumber = dictionary[kMediaSpeakerNumber];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.gPS != nil){
		dictionary[kMediaGPS] = self.gPS;
	}
	if(self.oTA != nil){
		dictionary[kMediaOTA] = self.oTA;
	}
	if(self.backgroundService != nil){
		dictionary[kMediaBackgroundService] = self.backgroundService;
	}
	if(self.carNetworking != nil){
		dictionary[kMediaCarNetworking] = self.carNetworking;
	}
	if(self.carTelephone != nil){
		dictionary[kMediaCarTelephone] = self.carTelephone;
	}
	if(self.displayScreen != nil){
		dictionary[kMediaDisplayScreen] = self.displayScreen;
	}
	if(self.externalAudioInterface != nil){
		dictionary[kMediaExternalAudioInterface] = self.externalAudioInterface;
	}
	if(self.interactionSystem != nil){
		dictionary[kMediaInteractionSystem] = self.interactionSystem;
	}
	if(self.radioResources != nil){
		dictionary[kMediaRadioResources] = self.radioResources;
	}
	if(self.remoteQuery != nil){
		dictionary[kMediaRemoteQuery] = self.remoteQuery;
	}
	if(self.screenSize != nil){
		dictionary[kMediaScreenSize] = self.screenSize;
	}
	if(self.sensus != nil){
		dictionary[kMediaSensus] = self.sensus;
	}
	if(self.speakerNumber != nil){
		dictionary[kMediaSpeakerNumber] = self.speakerNumber;
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
	if(self.gPS != nil){
		[aCoder encodeObject:self.gPS forKey:kMediaGPS];
	}
	if(self.oTA != nil){
		[aCoder encodeObject:self.oTA forKey:kMediaOTA];
	}
	if(self.backgroundService != nil){
		[aCoder encodeObject:self.backgroundService forKey:kMediaBackgroundService];
	}
	if(self.carNetworking != nil){
		[aCoder encodeObject:self.carNetworking forKey:kMediaCarNetworking];
	}
	if(self.carTelephone != nil){
		[aCoder encodeObject:self.carTelephone forKey:kMediaCarTelephone];
	}
	if(self.displayScreen != nil){
		[aCoder encodeObject:self.displayScreen forKey:kMediaDisplayScreen];
	}
	if(self.externalAudioInterface != nil){
		[aCoder encodeObject:self.externalAudioInterface forKey:kMediaExternalAudioInterface];
	}
	if(self.interactionSystem != nil){
		[aCoder encodeObject:self.interactionSystem forKey:kMediaInteractionSystem];
	}
	if(self.radioResources != nil){
		[aCoder encodeObject:self.radioResources forKey:kMediaRadioResources];
	}
	if(self.remoteQuery != nil){
		[aCoder encodeObject:self.remoteQuery forKey:kMediaRemoteQuery];
	}
	if(self.screenSize != nil){
		[aCoder encodeObject:self.screenSize forKey:kMediaScreenSize];
	}
	if(self.sensus != nil){
		[aCoder encodeObject:self.sensus forKey:kMediaSensus];
	}
	if(self.speakerNumber != nil){
		[aCoder encodeObject:self.speakerNumber forKey:kMediaSpeakerNumber];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.gPS = [aDecoder decodeObjectForKey:kMediaGPS];
	self.oTA = [aDecoder decodeObjectForKey:kMediaOTA];
	self.backgroundService = [aDecoder decodeObjectForKey:kMediaBackgroundService];
	self.carNetworking = [aDecoder decodeObjectForKey:kMediaCarNetworking];
	self.carTelephone = [aDecoder decodeObjectForKey:kMediaCarTelephone];
	self.displayScreen = [aDecoder decodeObjectForKey:kMediaDisplayScreen];
	self.externalAudioInterface = [aDecoder decodeObjectForKey:kMediaExternalAudioInterface];
	self.interactionSystem = [aDecoder decodeObjectForKey:kMediaInteractionSystem];
	self.radioResources = [aDecoder decodeObjectForKey:kMediaRadioResources];
	self.remoteQuery = [aDecoder decodeObjectForKey:kMediaRemoteQuery];
	self.screenSize = [aDecoder decodeObjectForKey:kMediaScreenSize];
	self.sensus = [aDecoder decodeObjectForKey:kMediaSensus];
	self.speakerNumber = [aDecoder decodeObjectForKey:kMediaSpeakerNumber];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Media *copy = [Media new];

	copy.gPS = [self.gPS copy];
	copy.oTA = [self.oTA copy];
	copy.backgroundService = [self.backgroundService copy];
	copy.carNetworking = [self.carNetworking copy];
	copy.carTelephone = [self.carTelephone copy];
	copy.displayScreen = [self.displayScreen copy];
	copy.externalAudioInterface = [self.externalAudioInterface copy];
	copy.interactionSystem = [self.interactionSystem copy];
	copy.radioResources = [self.radioResources copy];
	copy.remoteQuery = [self.remoteQuery copy];
	copy.screenSize = [self.screenSize copy];
	copy.sensus = [self.sensus copy];
	copy.speakerNumber = [self.speakerNumber copy];

	return copy;
}
@end