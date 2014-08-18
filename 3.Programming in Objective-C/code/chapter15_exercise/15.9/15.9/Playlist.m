//
//  Playlist.m
//  15.9
//
//  Created by wpgshatu on 13-8-1.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import "Playlist.h"

@implementation Playlist

@synthesize playlistName, songsList;

-(id) initWithName:(NSString *)theName
{
    self=[super init];
    if(self)
    {
        playlistName = [NSString stringWithString:theName];
        songsList = [NSMutableArray array];
    }
    return self;
}

-(id)init
{
    return [self initWithName: @"No Name"];
}
-(void) addSong:(Song *)theSong
{
    [songsList addObject: theSong];

}

-(void)removeSong:(Song *)theSong
{
    [songsList removeObjectIdenticalTo: theSong];
}

-(void) print
{
    NSLog (@"+++ start display : playlist Name: %s", [playlistName UTF8String]);
    NSLog (@"playlist count: %li",[songsList count]);
    for (Song * theSong in songsList)
        [theSong print];
    NSLog (@"--- Display end\n\n");
}
-(void) printSimple
{
    NSLog (@"+++ start display : playlist Name: %s", [playlistName UTF8String]);
    NSLog (@"playlist count: %li",[songsList count]);
    for (Song * theSong in songsList)
        NSLog (@"%@", theSong.title );
    NSLog (@"--- Display end\n\n");
}
@end
