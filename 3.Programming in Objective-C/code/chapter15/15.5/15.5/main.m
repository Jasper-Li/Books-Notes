//
//  main.m
//  15.5
//  Description: basic string operation - continued from 15.4
//  Created by wpgshatu on 13-6-14.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString * str1 = @"This is string A";
        NSString * res;
        NSRange  subRange;
        
        // Exact first 3 characters form string.
        
        NSLog (@"String A is : %@", str1);
        res = [str1 substringToIndex: 3];
        NSLog (@"First 3 characters of str1 is %@", res);
        
        // Exact chars to end of string starting from index 5
        res = [str1 substringFromIndex: 5];
        NSLog (@" Characters from index 5 of str1 is %@", res);
        
        // Exact chars from index 8 though 13 ( 6 chars )
        res = [ [ str1 substringFromIndex: 8] substringToIndex: 6];
        NSLog (@"chars from index 8 through 13: %@", res);
        
        // An easier way to do the same thing
        res = [str1 substringWithRange: NSMakeRange(8,6)];
        NSLog (@"chars from index 8 through 13: %@", res);
        
        
        // Locate one string inside another.
        subRange = [str1 rangeOfString: @"string A"];
        NSLog (@" string is at index %lu, length is %lu",
               subRange.location, subRange.length);
        
        subRange = [str1 rangeOfString: @"string B"];
        if (subRange.location == NSNotFound)
            NSLog(@"String is not found.");
        else
            NSLog (@" string is at index %lu, length is %lu",
                   subRange.location, subRange.length);
        
    }
    return 0;
}

