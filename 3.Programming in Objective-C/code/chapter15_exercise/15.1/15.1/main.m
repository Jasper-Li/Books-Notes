//
//  main.m
//  15.1
//
//  Created by wpgshatu on 13-7-30.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//  Description: NSDate Objects.

//#import <Foundation/Foundation.h>
#import "NSDate+ElapsedDays.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        unsigned long days;
        NSDate *Date1 = [NSDate dateWithString: @"2013-07-30 17:41:03 +0000"];
        
        NSLog (@"Date1 is %@", [Date1 description]);

        NSDate *Date2 = [NSDate dateWithString: @"2013-07-21 18:00:00 +0000"];
        NSLog (@"Date2 is %@", [Date2 description]);
        
        days=[Date1 elapsedDays:Date2];
  /*      if (days == nil)
            NSLog (@"Not found");
        else
    
   */
        NSLog (@"elapsed days is %li", days);
    }
    return 0;
}

