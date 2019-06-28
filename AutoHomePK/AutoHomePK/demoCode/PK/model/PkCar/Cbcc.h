//
//  Cbcc.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbcc : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *helpPowerType;
@property (nonatomic, strong) NSString *frontSuType;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *bodyStructure;
@property (nonatomic, strong) NSString *drivingMode;
@property (nonatomic, strong) NSString *rearSuType;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
