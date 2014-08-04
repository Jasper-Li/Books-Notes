//
//  Playlist.h
//  15.9
//
//  Created by wpgshatu on 13-8-1.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "Song.h"

@interface Playlist : NSObject

@property (copy, nonatomic) NSString * playlistName;
@property (nonatomic, strong) NSMutableArray *songsList;

-(id) initWithName: (NSString *) theName;
-(id) init;

-(void) addSong: (Song *) theSong;
-(void) removeSong: (Song *) theSong;
-(void) print;
-(void) printSimple;
@end
