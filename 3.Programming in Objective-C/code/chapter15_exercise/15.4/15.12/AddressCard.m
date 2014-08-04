//
//  AddressCard.m
//  15.11
//
//  Created by wpgshatu on 13-7-15.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize firstName, lastName, email, address, phoneNumbers;


-(void) print
{
    NSLog (@"=====================================");
    NSLog (@"|                                   |");
    NSLog (@"| name: %-10s %-10s       |", [firstName UTF8String],[lastName UTF8String]);
    NSLog (@"| phone: %-25s  |",[phoneNumbers UTF8String]);
    NSLog (@"| email: %-26s |", [email UTF8String]);
    NSLog (@"| address: %-24s |",[address UTF8String]);
   
    NSLog (@"|                                   |");
    NSLog (@"|           O           O           |");
    NSLog (@"=====================================");
}
-(void) setFirstName: (NSString *)theFirstName andLastName: (NSString *) theLastName
            andEmail: (NSString *) theEmail
          andAddress: (NSString *)theAddress
      andPhoneNumber: (NSString *)thePhoneNumbers
     
{
    self.firstName = theFirstName;
    self.lastName = theLastName;
    self.email = theEmail;
    self.address = theAddress;
    self.phoneNumbers = thePhoneNumbers;
    
}
-(NSComparisonResult) compareNames:(id)element
{
    return [firstName compare: [element firstName]];
}
@end
