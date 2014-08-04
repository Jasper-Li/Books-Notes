//
//  main.m
//  15.16
//
//  Created by wpgshatu on 13-7-26.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//  Description: Dictionary Object


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
        
        
        //store 3 entries in the glossary
        
        [glossary setObject: @"A class defined so other classes can inherit from it"
                    forKey:@"abstract class"];
        [glossary setObject: @"To implement all the methods defined in a protocol"
                     forKey: @"adopt"   ];
        [glossary setObject: @"Storing an object for later use"
                     forKey: @"archiving"];
        
        // retrive and display them
        NSLog (@"abstract class: %@", [glossary objectForKey: @"abstract class"]);
        NSLog (@"adopt: %@", [glossary objectForKey: @"adopt"]);
        NSLog (@"archiving: %@", [glossary objectForKey: @"archiving"]);
        
    }
    return 0;
}

