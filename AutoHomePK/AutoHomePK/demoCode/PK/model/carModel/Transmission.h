#import <UIKit/UIKit.h>

@interface Transmission : NSObject

@property (nonatomic, strong) NSString * blockNumber;
@property (nonatomic, strong) NSString * forShort;
@property (nonatomic, strong) NSString * gearboxType;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end