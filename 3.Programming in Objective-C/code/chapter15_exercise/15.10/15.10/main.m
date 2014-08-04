//
//  main.m
//  15.10
//
//  Created by wpgshatu on 13-8-5.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *myNumbers = [NSArray arrayWithObjects: @1, @2, @3, @4, @3, @4, @5,nil ];
        
        NSLog (@"my Numbers is %@", myNumbers);
        
        NSCountedSet *countedSet = [[NSCountedSet alloc] initWithArray:myNumbers];
        

           int i;
            for(i=0;i < [myNumbers count]; i++)
            {
                NSUInteger num;
                num=[countedSet countForObject: myNumbers[i]];
                if (num !=0)
                {
                    NSLog (@"%@ num : %li",myNumbers[i], num);
                    int j;
                    for(j=0;j<num;j++)
                    [countedSet removeObject:myNumbers[i]];
                }
            
            }
    }
    return 0;
}

