#import <UIKit/UIKit.h>

@interface Glas : NSObject

@property (nonatomic, strong) NSString * electricAdjusting;
@property (nonatomic, strong) NSString * electricFolding;
@property (nonatomic, strong) NSString * interceptingGlass;
@property (nonatomic, strong) NSString * mirrorAutomatically;
@property (nonatomic, strong) NSString * mirrorHeated;
@property (nonatomic, strong) NSString * mirrorMemory;
@property (nonatomic, strong) NSString * powerWindow;
@property (nonatomic, strong) NSString * windowAdjustable;
@property (nonatomic, strong) NSString * windowAnti;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end