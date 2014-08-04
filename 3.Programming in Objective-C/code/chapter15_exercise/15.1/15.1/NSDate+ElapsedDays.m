//
//  NSDate+ElapsedDays.m
//  15.1
//
//  Created by wpgshatu on 13-7-31.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import "NSDate+ElapsedDays.h"

@implementation NSDate (ElapsedDays)
-(unsigned long ) elapsedDays: (NSDate *) theDate
{
    if ([self compare: theDate] == NSOrderedDescending)
    {
        NSLog (@"%@ is earlier than %@", [theDate description], [self description]);
        return nil;
    }
    else
     return -[self timeIntervalSinceDate: theDate]/(24 * 60 * 60);
}
@end
