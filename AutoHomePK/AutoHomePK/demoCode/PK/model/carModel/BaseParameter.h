#import <UIKit/UIKit.h>

@interface BaseParameter : NSObject

@property (nonatomic, strong) NSString * baseMaxPower;
@property (nonatomic, strong) NSString * baseMaxTorque;
@property (nonatomic, strong) NSString * dimensions;
@property (nonatomic, strong) NSString * engine;
@property (nonatomic, strong) NSString * gearbox;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end