//
//  HTAddress.h
//  HomeTask0
//
//  Created by Siarhei Kokhan on 3/26/18.
//  Copyright © 2018 Siarhei Kokhan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTAddress : NSObject

@property(nonatomic, readonly) NSString *country;
@property(nonatomic, readonly) NSString *city;
@property(nonatomic, readonly) NSString *street;
@property(nonatomic, readonly) NSInteger zip;

-(instancetype) initWithCountry: (NSString *)country andCity: (NSString *)city andStreet: (NSString *)street andZip: (NSInteger)zip;

+(instancetype) adressWithCountry: (NSString *)country andCity: (NSString *)city andStreet: (NSString *)street andZip: (NSInteger)zip;
@end

