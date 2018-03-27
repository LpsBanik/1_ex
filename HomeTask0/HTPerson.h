//
//  HTPerson.h
//  HomeTask0
//
//  Created by Siarhei Kokhan on 3/27/18.
//  Copyright © 2018 Siarhei Kokhan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HTFamily;

@interface HTPerson : NSObject

@property(nonatomic, readonly) NSString *firstName;
@property(nonatomic, readonly) NSString *lastName;
@property(nonatomic, readonly) NSString *fullName;
@property(nonatomic, readonly) NSDate *birthdate;
@property(nonatomic, weak) HTFamily *family;

- (instancetype) initWithFirstName: (NSString *)firstName andLastName: (NSString *)lastName andBirthdate: (NSDate *)birthdate;;

- (NSDateFormatter *)dateFormatter;
@end
