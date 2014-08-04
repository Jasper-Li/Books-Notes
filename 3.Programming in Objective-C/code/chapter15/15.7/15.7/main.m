//
//  main.m
//  15.7
//  Description: Create an array to contain month names

//  Created by wpgshatu on 13-6-19.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int i;
        // Create an array to contain month names.
        NSArray *monthNames = [NSArray arrayWithObjects:
                               @"Janurary", @"February", @"March",@"April",
                               @"May", @"June", @"July", @"August", @"September",
                               @"October", @"November", @"December", nil];
        
        // Now list all the elements in the array.
        
        NSLog(@"Month   Name");
        NSLog(@"=====   ====");
        for(i=0; i<12; i++)
            NSLog(@"  %-2i     %@", i+1, [monthNames objectAtIndex: i]);
        

        
    }
    return 0;
}

