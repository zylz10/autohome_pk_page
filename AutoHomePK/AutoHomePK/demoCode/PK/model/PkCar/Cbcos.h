//
//  Cbcos.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbcos : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *panSky;
@property (nonatomic, strong) NSString *elecSky;
@property (nonatomic, strong) NSString *elecBackup;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *alumWheel;
@property (nonatomic, strong) NSString *slidDoor;
@property (nonatomic, strong) NSString *sportApp;
@property (nonatomic, strong) NSString *elecDoorPull;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
