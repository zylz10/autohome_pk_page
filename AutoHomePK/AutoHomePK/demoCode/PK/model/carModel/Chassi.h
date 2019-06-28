#import <UIKit/UIKit.h>

@interface Chassi : NSObject

@property (nonatomic, strong) NSString * behindSuspensionType;
@property (nonatomic, strong) NSString * frontSuspensionType;
@property (nonatomic, strong) NSString * powerType;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end