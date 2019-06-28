#import <UIKit/UIKit.h>

@interface Air : NSObject

@property (nonatomic, strong) NSString * airControl;
@property (nonatomic, strong) NSString * carPurifier;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end