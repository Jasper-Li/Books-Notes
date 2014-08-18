//
//  AddressCard.m
//  15.11
//
//  Created by wpgshatu on 13-7-15.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;


-(void) print
{
    NSLog (@"=====================================");
    NSLog (@"|                                   |");
    NSLog (@"|   %-31s |", [name UTF8String]);
    NSLog (@"|   %-31s |", [email UTF8String]);
    NSLog (@"|                                   |");
    NSLog (@"|                                   |");
    NSLog (@"|                                   |");
    NSLog (@"|           O           O           |");
    NSLog (@"=====================================");
}
-(void) setName: (NSString *)theName andEmail: (NSString *) theEmail;
{
    self.name = theName;
    self.email = theEmail;
}
-(NSComparisonResult) compareNames:(id)element
{
    return [name compare: [element name]];
}
@end
