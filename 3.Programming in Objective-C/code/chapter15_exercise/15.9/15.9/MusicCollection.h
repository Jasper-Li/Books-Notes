//
//  MusicCollection.h
//  15.9
//
//  Created by wpgshatu on 13-8-2.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "Playlist.h"

@interface MusicCollection : NSObject

@property (nonatomic, copy) Playlist * library;
@property (nonatomic, strong) NSMutableArray * playlistArray;

-(id) init;
-(void) addPlaylist: (Playlist *) thePlaylist;
-(void) removePlaylist: (Playlist *) thePlaylist;
-(void) printAll;

-(Playlist *)lookup: (Playlist *) thePlaylist;

-(void) addSong:(Song *) theSong toPlaylist: (Playlist *) thePlaylist;
-(void) removeSong: (Song *) theSong fromPlaylist: (Playlist *) thePlaylist;

@end
