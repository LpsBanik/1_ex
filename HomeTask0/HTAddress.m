//
//  HTAddress.m
//  HomeTask0
//
//  Created by Siarhei Kokhan on 3/26/18.
//  Copyright © 2018 Siarhei Kokhan. All rights reserved.
//

#import "HTAddress.h"


@implementation HTAddress

-(instancetype) initWithCountry: (NSString *)country andCity: (NSString *)city andStreet: (NSString *)street andZip: (NSInteger)zip {

    if (self = [super init]) {
        self.country = country;
        self.city = city;
        self.street = street;
        self.zip = zip;
    }
    return self;
}

//+(instancetype) adressWithCountry:(NSString *)country andCity:(NSString *)city andStreet:(NSString *)street andZip:(NSInteger)zip {
//
//    return [[self alloc] initWithCountry:country andCity:city andStreet:street andZip:zip];
//}

- (NSString *)description {
    if ((self.country == nil) || (self.city == nil) || (self.street == nil)) {
        return @"A person without adress";
    }
    return [NSString stringWithFormat:@" \ncountry - %@ \ncity - %@ \nstreet - %@ \nzip - %ld", self.country, self.city, self.street, self.zip];
}

@end
