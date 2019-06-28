//
//  Cbcl.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbcl : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *dayRun;
@property (nonatomic, strong) NSString *hlWash;
@property (nonatomic, strong) NSString *hid;
@property (nonatomic, strong) NSString *autoHl;
@property (nonatomic, strong) NSString *led;
@property (nonatomic, strong) NSString *frontFog;
@property (nonatomic, strong) NSString *airLight;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *steerAux;
@property (nonatomic, strong) NSString *steerHl;
@property (nonatomic, strong) NSString *hlAdj;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
