//
//  HTFamily.m
//  HomeTask0
//
//  Created by Siarhei Kokhan on 3/26/18.
//  Copyright © 2018 Siarhei Kokhan. All rights reserved.
//

#import "HTFamily.h"
#import "HTAddress.h"

@interface HTFamily ()

@property(nonatomic, readwrite) NSString *adress;

@end


@implementation HTFamily

-(instancetype) initWithCountry: (NSString *)country andCity: (NSString *)city andStreet: (NSString *)street andZip: (NSInteger)zip {
    
    if (self = [super ]) {
        
        HTAddress *adressFamily = [[HTAddress alloc] initWithCountry:country andCity:city andStreet:street andZip:zip];
        
        self.adress = adressFamily;
    }
    return self;
}

@end
