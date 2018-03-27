//
//  HTFamily.m
//  HomeTask0
//
//  Created by Siarhei Kokhan on 3/26/18.
//  Copyright © 2018 Siarhei Kokhan. All rights reserved.
//

#import "HTFamily.h"

@implementation HTFamily

-(instancetype) initWithCountry: (NSString *)country andCity: (NSString *)city andStreet: (NSString *)street andZip: (NSInteger)zip {
    
    if (self = [super init]) {
        
        HTAddress *adressFamily = [[HTAddress alloc] initWithCountry:country andCity:city andStreet:street andZip:zip];
        self.adress = adressFamily;
        
    }
    return self;
}

- (void)addMember:(HTPerson *)person {
    NSMutableArray *member = [[NSMutableArray alloc]init];
    [member addObjectsFromArray:self.members];
    [member addObject:person];
    self.members = [member copy];
}

- (NSString *)description {
    if (self.members == nil) {
        return @"Family not created ";
    }
    return [NSString stringWithFormat:@"Person %@ ", self.members];
}

@end
