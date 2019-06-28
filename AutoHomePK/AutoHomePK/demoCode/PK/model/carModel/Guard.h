#import <UIKit/UIKit.h>

@interface Guard : NSObject

@property (nonatomic, strong) NSString * eMMO;
@property (nonatomic, strong) NSString * pEPS;
@property (nonatomic, strong) NSString * pKE;
@property (nonatomic, strong) NSString * exteriorDoor;
@property (nonatomic, strong) NSString * laserWelding;
@property (nonatomic, strong) NSString * pianoLacquer;
@property (nonatomic, strong) NSString * powerSunroof;
@property (nonatomic, strong) NSString * smartShark;
@property (nonatomic, strong) NSString * surroundedWindow;
@property (nonatomic, strong) NSString * tailCrossBright;
@property (nonatomic, strong) NSString * trimPackage;
@property (nonatomic, strong) NSString * trunklock;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end