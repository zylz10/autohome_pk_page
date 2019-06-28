//
//  Cbcsa.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbcsa : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *carLock;
@property (nonatomic, strong) NSString *rearSideAirbag;
@property (nonatomic, strong) NSString *frontHeadAirbag;
@property (nonatomic, strong) NSString *kneeAirbag;
@property (nonatomic, strong) NSString *remoteKey;
@property (nonatomic, strong) NSString *rearHeadAirbag;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *tpms;
@property (nonatomic, strong) NSString *rsc;
@property (nonatomic, strong) NSString *frontSideAirbag;
@property (nonatomic, strong) NSString *nokeyEntry;
@property (nonatomic, strong) NSString *coDriverAirbag;
@property (nonatomic, strong) NSString *noSeatbeltWarn;
@property (nonatomic, strong) NSString *nokeyStart;
@property (nonatomic, strong) NSString *engineElecSec;
@property (nonatomic, strong) NSString *mainDriverAirbag;
@property (nonatomic, strong) NSString *isofix;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
