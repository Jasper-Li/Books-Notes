//
//  AddressCard.h
//  15.10
//
//  Created by wpgshatu on 13-7-15.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

-(void) setName: (NSString *) theName;
-(void) setEmail: (NSString *) theEmail;
-(NSString *) name;
-(NSString *) email;

-(void) print;
@end
