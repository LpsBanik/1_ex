//
//  HTPerson.m
//  HomeTask0
//
//  Created by Siarhei Kokhan on 3/27/18.
//  Copyright © 2018 Siarhei Kokhan. All rights reserved.
//

#import "HTPerson.h"

@interface HTPerson ()

@property(nonatomic, readwrite) NSString *firstName;
@property(nonatomic, readwrite) NSString *lastName;
@property(nonatomic, readwrite) NSString *fullName;
@property(nonatomic, readwrite) NSDate *birthdate;

@end

@implementation HTPerson

-(instancetype) initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andBirthdate:(NSDate *)birthdate {
    
    if (self = [super init]) {
        
        //NSDate *date = [NSDate date];
        self.firstName = firstName;
        self.lastName = lastName;
        self.fullName = [[firstName stringByAppendingString:@" "] stringByAppendingString:lastName];
        self.birthdate = birthdate;
//        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
//        [dateFormatter setDateStyle:NSDateFormatterShortStyle];
//        [dateFormatter setDateFormat:@"yyyy/MM/dd"];
//        [dateFormatter stringFromDate:birthdate];
    }
    return self;
}

- (NSString *)description {
    if (self.birthdate == nil) {
        return @"A person is not born ";
    }
    return [NSString stringWithFormat:@"Person %@ - > (first name %@  second name %@) - %@ - birthdate ", self.fullName, self.firstName, self.lastName, self.birthdate];
}

//- (NSDateFormatter *)dateFormatter {
//
//    NSDate *date = [NSDate date];
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
//    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
//    NSLog(@"%@",[dateFormatter stringFromDate:date]);
//
//    return dateFormatter;
//}

//-(instancetype) initWithFullName: (NSString *)fullName andFirstName:(NSString *)firstName andLastName:(NSString *)lastName andBirthdate:(NSDate *)birthdate{
//    if (self = [self initWithFirstName: self.firstName andLastName:self.lastName andBirthdate:self.birthdate]) {
//        self.fullName = fullName;
//    }
//    return self;
//}

@end
