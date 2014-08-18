//
//  main.m
//  15.4
//  Description : basic string operation
//  Created by wpgshatu on 13-6-14.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSString *res;
        
        NSComparisonResult compareResult;
    
        // Count the number of characters
        
        NSLog (@"Length of str1: %lu", [str1 length]);
        
        // Copy one string to another
        
        res = [NSString stringWithString: str1];
        NSLog (@"copy: %@", res);
        
        // Copy one string to the end of another
        
        str2 = [str1 stringByAppendingString : str2];
        NSLog (@" Concatenation: %@", str2);
        
        //test if two strings are equal.
        if ([str1 isEqualToString:str2] == YES)
        
            NSLog (@" str1 == str2");
        else
            NSLog (@" str1 != str2");
        
        // Test if one string is < , = or > another
        
        compareResult = [str1 compare: str1];
        
        if (compareResult == NSOrderedAscending )
            NSLog(@" str1 < str2 ");
        else if (compareResult == NSOrderedSame)
            NSLog(@"str1 == str2");
        
        else
            NSLog (@"str1 > str2");
        
        
        // convert a string to uppercase
        res = [str1 uppercaseString];
        
        NSLog(@"Uppercase string is %s", [res UTF8String]);
        
        // convert a string to lowercase
        
        res = [str1 lowercaseString];
        NSLog (@"lowercase string is %@", res);
        
        NSLog (@"origianl string is %@", str1);
    }
    return 0;
}

