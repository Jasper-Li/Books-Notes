//
//  main.m
//  16.2
//
//  Created by wpgshatu on 13-8-13.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//
/* 
 Description: make a copy of a file.
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSFileManager   *fm;
        NSData          *fileData;
        NSString        *fPath = @"/Users/wpgshatu/Documents/programming in OBJ/chapter16/16.2/16.2/";
        
        fm = [NSFileManager defaultManager] ;
        
        // change to the source directory.
        if ([fm changeCurrentDirectoryPath: fPath] == NO)
        {
            NSLog (@"change directory failed.");
            return -1;
        }
        
        NSLog (@"current directory is %@", [fm currentDirectoryPath]);
        //read the newfile2
        
        fileData = [fm contentsAtPath:@"newfile2"];
        
        if (fileData = nil)
        {
            NSLog (@"file read failed.");
            return 1;
        }
        
        NSLog (@"file data length is %li", [fileData length]);
        // write data to newfile3
        
        if ([fm createFileAtPath:@"newfile3" contents:fileData attributes:nil] == NO)
        {
            NSLog (@"couldn't create the copy");
            return 2;
        }
        
        NSLog (@"File copy was successful.");
    }
    return 0;
}

