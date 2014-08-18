//
//  main.m
//  15.9
//
//  Created by wpgshatu on 13-8-1.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

//#import "Song.h"
//#import "Playlist.h"
#import "MusicCollection.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Song *song1 = [[Song alloc] init];
        Song *song2 = [[Song alloc] init];
        Song *song3 = [[Song alloc] init];
        Song *song4 = [[Song alloc] init];
        Song *song5 = [[Song alloc] init];
        Playlist * playlist1 = [[Playlist alloc] initWithName:@"test1"];
        Playlist * playlist2 = [[Playlist alloc] initWithName: @"list2"];
        
        [song1 settitle:@"A new day has come" andArtist:@"Celin Dion" andAlbum:@"a new day has come" andPlayTime:@"0:05:41"];
        [song2 settitle:@"My heart will go on" andArtist:@"Celin Dion" andAlbum:@"Let's talk about love" andPlayTime:@"0:04:35"];
        [song3 settitle:@"Never had a dream come true" andArtist:@"S Club 7" andAlbum:@"" andPlayTime:@"0:04:01"];
        [song4 settitle:@"Get Over" andArtist:@"Dream" andAlbum:@"Process" andPlayTime:@"0:05:16"];
        [song5 settitle:@"I will be the one" andArtist:@"H^L" andAlbum:@"" andPlayTime:@"0:04:12"];
  
#if 0   // song print
        [song1 print];
        [song2 print];
        [song3 print];
        [song4 print];
        [song5 print];
        

        // playlist test.
        [playlist1 print];
        [playlist1 addSong:song3];
        [playlist1 addSong:song4];

        [playlist1 print];

        [playlist2 addSong:song5];
#endif        
        MusicCollection * myMC = [[MusicCollection alloc] init];
        [myMC addPlaylist: playlist1];
        [myMC addPlaylist: playlist2];

        [myMC addSong: song1 toPlaylist: myMC.library];
        [myMC addSong: song2 toPlaylist: myMC.library];
        [myMC addSong:song3 toPlaylist:playlist1];
        [myMC addSong:song4 toPlaylist:playlist1];
        
        [myMC addSong: song5 toPlaylist:playlist2];
        
       [myMC printAll];
        
        [myMC removeSong:song1 fromPlaylist:myMC.library];
        [myMC printAll];
    }
    return 0;
}

