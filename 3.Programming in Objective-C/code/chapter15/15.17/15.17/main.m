//
//  main.m
//  15.17
//
//  Created by wpgshatu on 13-7-26.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//  Description: based on 15.16, the changes is:
//  1. set: dict[key] = object  is the same as [dict setObject: object forKey: key]
//  2. read: dict[key] = [dict objectForKey: key];

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableDictionary    *glossary = [NSMutableDictionary dictionary];
        
        // store three entries in the glossary
        
        glossary[@"abstract class"] =
            @"A class defined so other classes can inherit from it";
        glossary [@"adopt"] =
            @"To implement all the methods defined in a protocol";
        glossary [@"archiving"] =
            @"Storing an object for later user";
        
        // retrive an display them
        
        NSLog (@"abstract class: %@", glossary[@"abstract class"]);
        NSLog (@"adopt: %@", glossary[@"adopt"]);
        NSLog (@"archiving: %@", glossary[@"archiving"]);
        
    }
    return 0;
}

