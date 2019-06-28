#import <UIKit/UIKit.h>

@interface Auxiliary : NSObject

@property (nonatomic, strong) NSString * cCS;
@property (nonatomic, strong) NSString * gSG;
@property (nonatomic, strong) NSString * hAC;
@property (nonatomic, strong) NSString * adaptiveCruiseControl;
@property (nonatomic, strong) NSString * energyRecoverySystem;
@property (nonatomic, strong) NSString * frontAndbackParkingRadar;
@property (nonatomic, strong) NSString * rightVisualSystem;
@property (nonatomic, strong) NSString * rverseVideoImage;
@property (nonatomic, strong) NSString * shiftAlertSystem;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end