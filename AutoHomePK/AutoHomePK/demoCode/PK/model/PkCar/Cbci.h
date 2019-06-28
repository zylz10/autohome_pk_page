//
//  Cbci.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbci : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *adjSteelElec;
@property (nonatomic, strong) NSString *revVideo;
@property (nonatomic, strong) NSString *leaSteer;
@property (nonatomic, strong) NSString *frontParkRad;
@property (nonatomic, strong) NSString *shiftSteel;
@property (nonatomic, strong) NSString *heatSteel;
@property (nonatomic, strong) NSString *hud;
@property (nonatomic, strong) NSString *cruiseCon;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *adjSteer;
@property (nonatomic, strong) NSString *rearParkRad;
@property (nonatomic, strong) NSString *multSteel;
@property (nonatomic, strong) NSString *driComDis;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
