#import <UIKit/UIKit.h>

@interface Internal : NSObject

@property (nonatomic, strong) NSString * iNS;
@property (nonatomic, strong) NSString * mFL;
@property (nonatomic, strong) NSString * allLcdInstrument;
@property (nonatomic, strong) NSString * builtInRecorder;
@property (nonatomic, strong) NSString * centralAisleDesign;
@property (nonatomic, strong) NSString * environmentalSoftInstrument;
@property (nonatomic, strong) NSString * laserTexture;
@property (nonatomic, strong) NSString * leatherSteeringWheel;
@property (nonatomic, strong) NSString * powerPort;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end