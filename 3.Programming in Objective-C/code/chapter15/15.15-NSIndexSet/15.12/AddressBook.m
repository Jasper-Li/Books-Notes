//
//  AddressBook.m
//  15.12
//
//  Created by wpgshatu on 13-7-15.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

//set up the AddressBook's name and an empty book
-(id) initWithName: (NSString *) name
{
    self = [super init];
    if(self)
    {
        bookName = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }
    return self;
    
}

-(id) init
{
    return [self initWithName: @"NoName"];
}

-(void) addCard: (AddressCard *) theCard
{
    [book addObject: theCard];
}

-(void) removeCard: (AddressCard *) theCard
{
    [book removeObjectIdenticalTo: theCard];
}


-(NSUInteger) entries
{
    return [book count];
}

-(void) list
{
    NSLog (@"======== Contents of: %@ ========", bookName);
    
    for (AddressCard *theCard in book)
        NSLog (@"%-20s    %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    
    NSLog (@"================================================");
}

-(AddressCard *) lookup: (NSString *) theName
{
    NSLog (@"Find %@", theName);
    
    for (AddressCard * nextCard in book)
    {
        if ( [nextCard.name caseInsensitiveCompare: theName] == NSOrderedSame)
            
        {    [nextCard print];
            return nextCard;
        }
    }
    NSLog (@"Not found!");
    return nil;
}
-(NSMutableArray *) lookupAll:(NSString *)theName
{
    NSIndexSet *result = [book indexesOfObjectsPassingTest:
                          ^(id obj, NSUInteger idx, BOOL *stop)
                          {
                              if ( [[obj name] caseInsensitiveCompare: theName] == NSOrderedSame)
                                  return YES;
                              else
                                  return NO;
                          }];
    
    
    NSMutableArray *foundAddressCard = [[NSMutableArray alloc] init];
    NSUInteger  index = [result firstIndex];
    
    if (index == NSNotFound)
    {
        NSLog(@"string %@ is not found", theName);
    }
    while (index != NSNotFound)
    {
        // action
        printf ("%li,", index);
        [foundAddressCard addObject: book[index]];
        
        index = [result indexGreaterThanIndex: index];
    }
    printf("\n");
    
    for (AddressCard *theCard in foundAddressCard)
        NSLog (@"%-20s    %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    return foundAddressCard;
   }
-(void) sort
{
    [book sortUsingSelector: @selector(compareNames:)];
}
@end
