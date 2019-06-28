//
//  Cbct.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbct : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *splLcd;
@property (nonatomic, strong) NSString *inColor;
@property (nonatomic, strong) NSString *panCamera;
@property (nonatomic, strong) NSString *activeSteer;
@property (nonatomic, strong) NSString *activeSafe;
@property (nonatomic, strong) NSString *auxiliary;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *autoPark;
@property (nonatomic, strong) NSString *laneDepWarn;
@property (nonatomic, strong) NSString *outColor;
@property (nonatomic, strong) NSString *engineSs;
@property (nonatomic, strong) NSString *nightVision;
@property (nonatomic, strong) NSString *adaCru;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
