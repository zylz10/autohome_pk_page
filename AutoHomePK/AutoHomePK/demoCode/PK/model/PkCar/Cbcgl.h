//
//  Cbcgl.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbcgl : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *autoWiper;
@property (nonatomic, strong) NSString *rearElecWin;
@property (nonatomic, strong) NSString *fontElecWin;
@property (nonatomic, strong) NSString *outAntiGlare;
@property (nonatomic, strong) NSString *inAntiGlare;
@property (nonatomic, strong) NSString *rvElecFold;
@property (nonatomic, strong) NSString *antiUv;
@property (nonatomic, strong) NSString *rvMemory;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *sunShPla;
@property (nonatomic, strong) NSString *rvHeat;
@property (nonatomic, strong) NSString *rearMidSs;
@property (nonatomic, strong) NSString *rearSideSs;
@property (nonatomic, strong) NSString *rvElecAdj;
@property (nonatomic, strong) NSString *rearWiper;
@property (nonatomic, strong) NSString *rearPriWin;
@property (nonatomic, strong) NSString *prevClipWin;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
