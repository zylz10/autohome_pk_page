#import <UIKit/UIKit.h>

@interface Led : NSObject

@property (nonatomic, strong) NSString * autoLight;
@property (nonatomic, strong) NSString * dippedHeadlight;
@property (nonatomic, strong) NSString * drivingLamp;
@property (nonatomic, strong) NSString * headlightsAdjustable;
@property (nonatomic, strong) NSString * headlightsForget;
@property (nonatomic, strong) NSString * highBeam;
@property (nonatomic, strong) NSString * lightsLreathing;
@property (nonatomic, strong) NSString * readingLight;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end