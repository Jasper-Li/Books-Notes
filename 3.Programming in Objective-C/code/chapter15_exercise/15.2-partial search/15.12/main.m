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
// 5. add lookupAll: method to return an array of the matching address cards. // Jasper Li 2013.07.29
// 6. modify lookup: method so that partial maches of a name can be made.


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
        NSString *eName = @"stephen chou";
        NSString *eEmail = @"stephen_2@email.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        AddressCard *card5 = [[AddressCard alloc] init];
        // Set up a new address book
        
        AddressBook * myBook = [[AddressBook alloc] initWithName: @"Linda's AddressBoook"];
        NSArray * searchResult;
        
        NSLog (@"Entries in address book after creation: %li", [myBook entries]);
        
        // Now se up four address cards
        
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        [card5 setName: eName andEmail: eEmail];
        
        // add cards to the address book
        
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        [myBook addCard: card5];
        
        NSLog (@"Entries in address book after adding cards: %li", [myBook entries]);
        
      //  [myBook list];
  /*
        myCard = [myBook lookup: @"stephen kochan"];
        
        // now remove the entry from the phone book;
        
        [myBook removeCard: myCard];
    */
        // sort it and list it again
        [myBook sort];
        [myBook list ];
    
        NSString *searchElement = @"stephen";
        searchResult = [myBook lookupAll: searchElement];
       
        // display the result
        NSLog (@"Search result of %@ is below:", searchElement);
        for (AddressCard *theCard in searchResult)
            NSLog (@"%-20s    %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);

    }
    return 0;
}

