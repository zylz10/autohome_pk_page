#import <UIKit/UIKit.h>

@interface CarNm : NSObject

@property (nonatomic, strong) NSString * carNm;
@property (nonatomic, strong) NSString * carImage;
@property (nonatomic, strong) NSString * carPrice;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end