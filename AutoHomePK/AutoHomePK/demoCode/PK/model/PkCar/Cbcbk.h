//
//  Cbcbk.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbcbk : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *spareTireType;
@property (nonatomic, strong) NSString *rearTireType;
@property (nonatomic, strong) NSString *rearBrakeType;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *frontBrakeType;
@property (nonatomic, strong) NSString *parkBrakeType;
@property (nonatomic, strong) NSString *frontTireType;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
