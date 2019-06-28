#import <UIKit/UIKit.h>

@interface Chair : NSObject

@property (nonatomic, strong) NSString * adjustSeat;
@property (nonatomic, strong) NSString * backCenterHeadrest;
@property (nonatomic, strong) NSString * centreArmrest;
@property (nonatomic, strong) NSString * electricAdjustment;
@property (nonatomic, strong) NSString * rearStand;
@property (nonatomic, strong) NSString * seatMaterial;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end