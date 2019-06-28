#import <UIKit/UIKit.h>

@interface CarBody : NSObject

@property (nonatomic, strong) NSString * frontGauge;
@property (nonatomic, strong) NSString * height;
@property (nonatomic, strong) NSString * length;
@property (nonatomic, strong) NSString * tankVolume;
@property (nonatomic, strong) NSString * trackRear;
@property (nonatomic, strong) NSString * trunkVolume;
@property (nonatomic, strong) NSString * unladenMass;
@property (nonatomic, strong) NSString * wheelbase;
@property (nonatomic, strong) NSString * width;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end