//
//  main.m
//  15.13
//
//  Created by wpgshatu on 13-7-15.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//
// Description :
// 1. AddressBook , create , add, count, list card.
// 2. add method of look up.
// 3. add remove object method by removeObjectIdenticalTo:
// 4. add method of sort
// 4b. sorting using blocks

//#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        // Set up a new address book
        
        AddressBook * myBook = [[AddressBook alloc] initWithName: @"Linda's AddressBoook"];
        AddressCard *myCard;
        
        
        NSLog (@"Entries in address book after creation: %li", [myBook entries]);
        
        // Now se up four address cards
        
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        
        
        // add cards to the address book
        
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        NSLog (@"Entries in address book after adding cards: %li", [myBook entries]);
        
        [myBook list];
  /*
        myCard = [myBook lookup: @"stephen kochan"];
        
        // now remove the entry from the phone book;
        
        [myBook removeCard: myCard];
    */
        // sort it and list it again
        [myBook sort];
        [myBook list ];
        
    }
    return 0;
}

