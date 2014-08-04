//
//  main.m
//  15.18
//
//  Created by wpgshatu on 13-7-26.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
            NSDictionary *glossary =
        [NSDictionary dictionaryWithObjectsAndKeys:
         @"A class defined so other classes can inherit from it",
         @"abstract class",
         @"To implement all the methods defined in a protocol",
         @"adopt",
         @"storing an object for later use",
         @"archiving",
         nil
         ];
        
        // Print all key-value pairs fom the dictionary
        for (NSString *key in glossary)
            NSLog (@"%@: %@", key, glossary[key]);
    }
    return 0;
}

