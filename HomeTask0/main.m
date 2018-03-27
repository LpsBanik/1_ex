//
//  main.m
//  HomeTask0
//
//  Created by Siarhei Kokhan on 3/26/18.
//  Copyright © 2018 Siarhei Kokhan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HTAddress.h"
#import "HTFamily.h"
#import "HTPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        HTAddress *adress = [[HTAddress alloc] initWithCountry:@"Belorus" andCity:@"Gomel" andStreet:@"Lepeshinskogo" andZip:246015];
        HTAddress *adress1 = [HTAddress adressWithCountry:@"Russia" andCity:@"Moscow" andStreet:@"Sovetskay" andZip:500100];
        
        NSLog(@"My adress = %@", adress);
        NSLog(@"Your adress = %@", adress1);
        
        HTFamily *family = [[HTFamily alloc] initWithCountry:@"Fa" andCity:@"mi" andStreet:@"ly" andZip:1];
         NSLog(@"Adress His family = %@", family.adress);
       
        HTPerson *person1 = [[HTPerson alloc] initWithFirstName:@"Qiwi" andLastName:@"Wiwi" andBirthdate:@"2001/01/01"];
        NSLog(@"%@", person1);
        
        HTPerson *person2 = [[HTPerson alloc] initWithFirstName:@"Mther" andLastName:@"Fther" andBirthdate:@"2000/10/01"];
        NSLog(@"%@", person2);
        
        HTPerson *person3 = [[HTPerson alloc] initWithFirstName:@"San Fran" andLastName:@"Cis Ko" andBirthdate:@"2015/15/05"];
        NSLog(@"%@", person3);
        
        [family addMember:person2];
        [family addMember:person1];
        NSLog(@"\n------------------------------------------------------------------------");
        for (HTFamily* fam in family.members) {
            NSLog(@"%@", fam);
        }
        NSLog(@"\n------------------------------------------------------------------------");
        [family addMember:person3];
        for (HTFamily* fam in family.members) {
            NSLog(@"%@", fam);
        }

    }
    return 0;
}
