//
//  main.m
//  15.9
//  Description: 1. create an array of ten number objects, whose values range from 0 through 9.
// 2. display using just %@ format characters in the NSLog format string.
//  Created by wpgshatu on 13-6-19.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *numbers = [NSMutableArray array];
        int i;
        
        // Create an array with the number 0 - 9
        for (i=0; i<10; i++)
            numbers[i] = @(i+10);

        // Sequence through the array and display the values.
        for (i=0; i<10; i++)
            NSLog (@"nubmers[%i] = %@", i, numbers[i]);
        
        // Look how NSLog can display it with a single %@ format
        NSLog (@"====== Using a single NSLog");
        NSLog (@"%@", numbers);
        
    }
    return 0;
}

