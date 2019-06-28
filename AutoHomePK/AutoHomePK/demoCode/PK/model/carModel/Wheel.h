#import <UIKit/UIKit.h>

@interface Wheel : NSObject

@property (nonatomic, strong) NSString * behindBrakeType;
@property (nonatomic, strong) NSString * behindTireType;
@property (nonatomic, strong) NSString * frontBrakeType;
@property (nonatomic, strong) NSString * frontTireType;
@property (nonatomic, strong) NSString * parkingBrakeType;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end