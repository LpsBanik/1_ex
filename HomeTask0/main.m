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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        HTAddress *adress = [[HTAddress alloc] initWithCountry:@"Belorus" andCity:@"Gomel" andStreet:@"Lepeshinskogo" andZip:246015];
        HTAddress *adress1 = [HTAddress adressWithCountry:@"Russia" andCity:@"Moscow" andStreet:@"Sovetskay" andZip:500100];
        
        NSLog(@"My adress = %@", adress);
        NSLog(@"Your adress = %@", adress1);
        
        HTFamily *family = [[HTFamily alloc] initWithCountry:@"Fa" andCity:@"mi" andStreet:@"ly" andZip:1];
         NSLog(@"His family = %@", family);
    }
    return 0;
}
