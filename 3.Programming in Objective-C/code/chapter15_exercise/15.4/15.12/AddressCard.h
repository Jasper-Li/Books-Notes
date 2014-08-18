//
//  AddressCard.h
//  15.11
//
//  Created by wpgshatu on 13-7-15.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *firstName, *lastName, *email, *address, *phoneNumbers;

-(void) print;
-(void) setFirstName: (NSString *)theFirstName andLastName: (NSString *) theLastName
            andEmail: (NSString *) theEmail
          andAddress: (NSString *)theAddress
      andPhoneNumber: (NSString *)thePhoneNumbers;

-(NSComparisonResult) compareNames : (id) element;
@end
