//
//  main.m
//  15.2
//  Description: working with literal number objects
//  Created by wpgshatu on 13-6-14.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSNumber    *myNumber, *floatNumber, * intNumber;
        NSInteger   myInt;
        
        
        //integer
        
        intNumber = @100;
        myInt = [intNumber integerValue];
        
        NSLog(@"%li", myInt);
        
        // long value
        
        myNumber =@0xabcdefL; //[NSNumber numberWithLong :0xabcdef];//
        NSLog(@"%lx", [myNumber longValue]);
        
        // char value
        
        myNumber = @'X';
        NSLog (@"%c", [myNumber charValue]);
        
        // float value
        
        floatNumber = @100.f;
        NSLog (@"%g", [floatNumber floatValue]);
        
        
    }
    return 0;
}

