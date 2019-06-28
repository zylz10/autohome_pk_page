//
//  Cbcop.h
//
//  Created by CarMall  on 16/1/7
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Cbcop : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *ebd;
@property (nonatomic, strong) NSString *brakeAssist;
@property (nonatomic, strong) NSString *variSteerRatio;
@property (nonatomic, strong) NSString *airSuspen;
@property (nonatomic, strong) NSString *tracCon;
@property (nonatomic, strong) NSString *steepDrop;
@property (nonatomic, strong) NSString *frontAxleLimit;
@property (nonatomic, strong) NSString *autoPark;
@property (nonatomic, strong) NSString *variSuspen;
@property (nonatomic, assign) double carId;
@property (nonatomic, strong) NSString *hsAssistCon;
@property (nonatomic, strong) NSString *midAxleLimit;
@property (nonatomic, strong) NSString *rearAxleLimit;
@property (nonatomic, strong) NSString *stabCon;
@property (nonatomic, strong) NSString *abs;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
