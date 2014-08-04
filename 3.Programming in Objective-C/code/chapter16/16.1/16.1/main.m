//
//  main.m
//  16.1
//
//  Created by wpgshatu on 13-8-12.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//
/* 
 Description:
 Basic File operations
 Assumes the existence of a file called "testfile"
 in the current directory.
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString        *fName = @"testfile";
        NSFileManager   *fm;
        NSString        *fPath = @"/Users/wpgshatu/Documents/programming in OBJ/chapter16/16.1/16.1/";
        NSDictionary    *attr;
        // Need to create  an instance of the file manager
        
        fm = [NSFileManager defaultManager];
        
        if( [fm changeCurrentDirectoryPath: fPath] == NO)
        {
            NSLog (@"change directory failed.");
            return -1;
        }
        NSLog (@"current directory is %@", [fm currentDirectoryPath]);
        // test file exists.
        
        if ([fm fileExistsAtPath: fName] == NO)
        {
            NSLog (@"File does not exit!");
            return 1;
        }
        //NSLog (@"File exists.");
        
        // Now let's make a copy
        if ([fm copyItemAtPath:fName toPath:@"newfile" error:NULL] == NO)
        {
            NSLog (@"File copy failed");
            return 2;
        }
        
        // rename the copy
        if ([fm moveItemAtPath:@"newfile" toPath:@"newfile2" error:NULL ] == NO)
        {
            NSLog (@"File rename failed");
            return 3;
        }
        
        //test 2 files are equal.
        if([fm contentsEqualAtPath:fName andPath:@"newfile2"] == NO)
        {
            NSLog (@"File are not equal.");
            return 4;
        }
        
        // get the size of newfile2
        if ((attr = [fm attributesOfItemAtPath:@"newfile2" error:NULL]) == nil )
        {
            NSLog (@"Get file attributes failed.");
            return 5;
        }
        
        NSLog (@"file size is %llu bytes", [[ attr objectForKey: NSFileSize] unsignedLongLongValue]);
        
        // and finally, delete the original file
        
        if ([fm removeItemAtPath:fName error:NULL] == NO)
        {
            NSLog (@"Remove file failed");
            return 6;
        }
        
        NSLog (@"All operations were successful");
        
        // Display the contents of the newly created file.
        NSLog (@"%@", [NSString stringWithContentsOfFile:@"newfile2" encoding:NSUTF8StringEncoding error:NULL]);
        
        
        
    }
    return 0;
}

