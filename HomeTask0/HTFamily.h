//
//  HTFamily.h
//  HomeTask0
//
//  Created by Siarhei Kokhan on 3/26/18.
//  Copyright © 2018 Siarhei Kokhan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HTAddress.h"
#import "HTPerson.h"

@class HTPerson;

@interface HTFamily : NSObject

@property(nonatomic, readwrite) HTAddress *adress;
@property(nonatomic, copy) NSArray *members;

-(instancetype) initWithCountry: (NSString *)country andCity: (NSString *)city andStreet: (NSString *)street andZip: (NSInteger)zip;

- (void)addMember: (HTPerson *) person;

@end
