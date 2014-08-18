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
// 7. (1) seperate name fields into first name and last name fields.
// 7. (2) add addresses and phone numbers fields.
// 8. modify lookupAll: method to perform a search on all the fields of an address card.
// 9. for exercise 15.6: add removeName Method, if the name is not found or multiple entries exit, return NO ;
#import "AddressBook.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *aName = @"Julia";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Jamie";
        NSString *dEmail = @"jbaker@classroomM.com";
        NSString *eName = @"stephen";
        NSString *eEmail = @"stephen_2@email.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        AddressCard *card5 = [[AddressCard alloc] init];
        // Set up a new address book
        
        AddressBook * myBook = [[AddressBook alloc] initWithName: @"Linda's AddressBoook"];
        //NSArray * searchResult;
       
        // Now se up four address cards
        
        [card1 setFirstName:aName
                andLastName:@"Kochan"
                   andEmail:aEmail
                 andAddress:@"Hong Kong, China"
             andPhoneNumber:@"111111"];
        
        [card2 setFirstName:bName
                andLastName:@"Iannino"
                   andEmail:bEmail
                 andAddress:@"Tokyo, Japan"
             andPhoneNumber:@"222222"];
        
        [card3 setFirstName:cName
                andLastName:@"Kochan"
                   andEmail:cEmail
                 andAddress:@"New York, USA"
             andPhoneNumber:@"333333"];
        
        [card4 setFirstName:dName
                andLastName:@"Baker"
                   andEmail:dEmail
                 andAddress:@"Paris, France"
             andPhoneNumber:@"444444"];
        
        [card5 setFirstName:eName
                andLastName:@"chou"
                   andEmail:eEmail
                 andAddress:@"Shanghai, China"
             andPhoneNumber:@"555555"];
        
        
        
        // add cards to the address book
        
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        [myBook addCard: card5];
        
        //card print
       // for (AddressCard * myCard in myBook.book)
        //    [myCard print];
        
        // sort it and list it again
        //[myBook list ];
        [myBook sort];
        [myBook list ];
        NSString *test = aName;
        NSLog (@" test is %@", test);
        aName = @"Jasper's Tesst";
        NSLog (@" aName is %@, test is %@", aName, test);
        NSLog (@" card1 print");
        card1.firstName = @"Jasper'2";
        [card1 print];
        
        [myBook list];
        
        
#if 0
        NSString *searchElement = @"33";
        searchResult = [myBook lookupAll: searchElement];
       
        // display the result
        NSLog (@"Search result of %@ is below:", searchElement);
        for (AddressCard *theCard in searchResult)
         
                NSLog (@".%-10s .%-10s .%-10s .%-20s  .%-32s", [theCard.firstName UTF8String],[theCard.lastName UTF8String],
                       [theCard.phoneNumbers UTF8String],
                       [theCard.address UTF8String],
                       [theCard.email UTF8String]);
        
        searchElement = @"tony";
        if ([myBook removeName:searchElement] == YES )
            NSLog (@" remove succeed.") ;
        else
            NSLog (@" remove failed");
        
        [myBook list];
#endif

    }
    return 0;
}

