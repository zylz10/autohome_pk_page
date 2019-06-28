#import <UIKit/UIKit.h>
#import "Air.h"
#import "Auxiliary.h"
#import "BaseParameter.h"
#import "CarBody.h"
#import "CarNm.h"
#import "Chair.h"
#import "Chassi.h"
#import "Engine.h"
#import "Glas.h"
#import "Guard.h"
#import "Internal.h"
#import "Led.h"
#import "Media.h"
#import "Safety.h"
#import "Transmission.h"
#import "Wheel.h"

@interface PKCarModel : NSObject

@property (nonatomic, strong) Air * air;
@property (nonatomic, strong) Auxiliary * auxiliary;
@property (nonatomic, strong) BaseParameter * baseParameter;
@property (nonatomic, strong) CarBody * carBody;
@property (nonatomic, strong) CarNm * carNm;
@property (nonatomic, strong) Chair * chair;
@property (nonatomic, strong) Chassi * chassis;
@property (nonatomic, strong) Engine * engine;
@property (nonatomic, strong) Glas * glass;
@property (nonatomic, strong) Guard * guard;
@property (nonatomic, strong) Internal * internal;
@property (nonatomic, strong) Led * led;
@property (nonatomic, strong) Media * media;
@property (nonatomic, strong) Safety * safety;
@property (nonatomic, strong) Transmission * transmission;
@property (nonatomic, strong) Wheel * wheel;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end