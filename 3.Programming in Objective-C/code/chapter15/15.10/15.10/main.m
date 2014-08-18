//
//  main.m
//  15.10
//
//  Created by wpgshatu on 13-6-27.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "AddressCard.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
     NSString *aName = @"Julia Kochan";
     NSString *aEmail = @"Jewls337@axlc.com";
        
     AddressCard *card1 = [[AddressCard alloc] init] ;
        
        [card1 setName: aName];
        [card1 setEmail:aEmail];
        [card1 print];
        
        
        
    }
    return 0;
}

