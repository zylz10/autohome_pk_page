//
//  Cbca.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbca : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *airPur;
@property (nonatomic, strong) NSString *iceBox;
@property (nonatomic, strong) NSString *temParCon;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *airConModel;
@property (nonatomic, strong) NSString *rearOutlet;
@property (nonatomic, strong) NSString *rearAirCon;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
