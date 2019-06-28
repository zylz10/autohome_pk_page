//
//  Cbcgb.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbcgb : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *gearNum;
@property (nonatomic, strong) NSString *gearBoxType;
@property (nonatomic, strong) NSString *shortName;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
