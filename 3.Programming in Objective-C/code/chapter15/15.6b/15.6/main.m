//
//  main.m
//  15.6
//  Description: Basic String Operations -- Mutable strings
//  Created by wpgshatu on 13-6-14.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
            NSString * str1 = @"This is string A";
        NSString * search , *replace;
        NSMutableString *mstr;
        NSRange substr;
        
        // Create a mutalbe string from a nonmutable
        
        mstr = [NSMutableString stringWithString: str1];
        NSLog (@" mstr is :%@", mstr);
        
        //Insert characters
        [mstr insertString: @" mutable" atIndex: 7];
        NSLog (@"mstr is :%@", mstr);
        
        // Effective concatenation if insert at end
        
        [mstr insertString: @" and string B" atIndex: [mstr length]];
        NSLog (@"mstr is :%@", mstr);
        
        // Or can use appendString directly
        [mstr appendString: @" and string C"];
        NSLog (@"%@", mstr);
        
        // Delete substring based on range
        [mstr deleteCharactersInRange: NSMakeRange(16,13)];
        NSLog(@" mstr is :%@", mstr);
        
        // Find the range first and then use it deletion
        
        substr = [mstr rangeOfString: @"string B and "];
        
        if (substr.location != NSNotFound)
        {
            [mstr deleteCharactersInRange: substr];
            NSLog (@"mstr delete string B and is :%@", mstr);
        }
        
        // Set the mutable string directly
        
        [mstr setString: @"This is string A"];
        NSLog (@" mstr setString by 'This is String A':%@", mstr);
        
        // Now let's replace a range of characters with another
        
        [mstr replaceCharactersInRange: NSMakeRange(8,8)
                            withString:@"a mutable string"];
        NSLog(@"mstr replace :%@", mstr);
        
        // Search and replace
        
        search = @"This is";
        replace = @"An example of";
        
        substr = [mstr rangeOfString: search];
        
        if(substr.location != NSNotFound)
        {
            [mstr replaceCharactersInRange: substr
                                withString: replace];
            NSLog(@"mstr is :%@", mstr);
            
        }
        
        // Search and replace  all occurances
#if 0 
        search = @"a";
        replace = @"X";
        
        substr = [mstr rangeOfString: search];
        while (substr.location != NSNotFound)
        {
            [mstr replaceCharactersInRange: substr
                                withString: replace];
            substr = [mstr rangeOfString: search];
        }
        

#else
        [mstr replaceOccurrencesOfString: @"a"
                              withString: @"X"
                                 options: nil                                   range: NSMakeRange(0, [mstr length]) ];
#endif
       
        NSLog(@"mstr is :%@", mstr);
    }
    return 0;
}

