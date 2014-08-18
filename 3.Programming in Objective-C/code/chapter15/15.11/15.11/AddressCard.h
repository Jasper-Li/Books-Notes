//
//  AddressCard.h
//  15.11
//
//  Created by wpgshatu on 13-7-15.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name, *email;
-(void) print;
-(void) setName: (NSString *)theName andEmail: (NSString *) theEmail;

@end
