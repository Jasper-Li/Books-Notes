//
//  MusicCollection.m
//  15.9
//
//  Created by wpgshatu on 13-8-2.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import "MusicCollection.h"

@implementation MusicCollection

@synthesize library, playlistArray;

-(id) init
{
    self = [super init];
    if (self)
    {
        library = [[Playlist alloc] initWithName:@"library"];
        playlistArray = [NSMutableArray array];
    }
    return self;

}
-(void) addPlaylist: (Playlist *) thePlaylist
{
    [playlistArray addObject: thePlaylist];
}
-(void) removePlaylist: (Playlist *) thePlaylist
{
    [playlistArray removeObjectIdenticalTo: thePlaylist];
}

-(void) printAll
{
    NSLog (@"********** Print all ahe info ***********");
    [library print];
    for ( Playlist * thePlaylist in playlistArray)
        [thePlaylist print];
}

-(Playlist *) lookup:(Playlist *)thePlaylist
{
    return thePlaylist;
}
-(void) addSong:(Song *) theSong toPlaylist: (Playlist *) thePlaylist
{
    [library addSong:theSong];
    
        //create
    if (thePlaylist != library)
        [thePlaylist addSong:theSong];
    
}
-(void) removeSong: (Song *) theSong fromPlaylist: (Playlist *) thePlaylist
{
    
    [thePlaylist removeSong:theSong] ;
    if (thePlaylist == library)
    {
        NSLog (@"the playlist == library");
        for ( Playlist * aPlaylist in playlistArray)
            [aPlaylist removeSong: theSong];
    }
}

@end
