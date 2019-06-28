#import <UIKit/UIKit.h>

@interface Safety : NSObject

@property (nonatomic, strong) NSString * aBS;
@property (nonatomic, strong) NSString * aSR;
@property (nonatomic, strong) NSString * eBA;
@property (nonatomic, strong) NSString * eBD;
@property (nonatomic, strong) NSString * eSC;
@property (nonatomic, strong) NSString * eSS;
@property (nonatomic, strong) NSString * hEEAB;
@property (nonatomic, strong) NSString * sAB;
@property (nonatomic, strong) NSString * sRS;
@property (nonatomic, strong) NSString * backDoorLock;
@property (nonatomic, strong) NSString * engineCovered;
@property (nonatomic, strong) NSString * frontSeatBelt;
@property (nonatomic, strong) NSString * frontSeatBeltYj;
@property (nonatomic, strong) NSString * headAirbag;
@property (nonatomic, strong) NSString * isofix;
@property (nonatomic, strong) NSString * safetyBeltHint;
@property (nonatomic, strong) NSString * tirePressure;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end