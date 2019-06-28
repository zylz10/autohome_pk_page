#import <UIKit/UIKit.h>

@interface Media : NSObject

@property (nonatomic, strong) NSString * gPS;
@property (nonatomic, strong) NSString * oTA;
@property (nonatomic, strong) NSString * backgroundService;
@property (nonatomic, strong) NSString * carNetworking;
@property (nonatomic, strong) NSString * carTelephone;
@property (nonatomic, strong) NSString * displayScreen;
@property (nonatomic, strong) NSString * externalAudioInterface;
@property (nonatomic, strong) NSString * interactionSystem;
@property (nonatomic, strong) NSString * radioResources;
@property (nonatomic, strong) NSString * remoteQuery;
@property (nonatomic, strong) NSString * screenSize;
@property (nonatomic, strong) NSString * sensus;
@property (nonatomic, strong) NSString * speakerNumber;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end