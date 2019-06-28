#import <UIKit/UIKit.h>

@interface Engine : NSObject

@property (nonatomic, strong) NSString * bodyMaterial;
@property (nonatomic, strong) NSString * engineMaxPower;
@property (nonatomic, strong) NSString * engineMaxTorque;
@property (nonatomic, strong) NSString * headmaterial;
@property (nonatomic, strong) NSString * maxTorqueSpeed;
@property (nonatomic, strong) NSString * rpm;
@property (nonatomic, strong) NSString * standards;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end