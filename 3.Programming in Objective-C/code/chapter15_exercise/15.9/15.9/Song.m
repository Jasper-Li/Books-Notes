//
//  Song.m
//  15.9
//
//  Created by wpgshatu on 13-8-1.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import "Song.h"

@implementation Song

@synthesize title, artist, album, playTime;

-(void) settitle:(NSString *)theTitle andArtist:(NSString *)theArtist andAlbum:(NSString *)theAlbum andPlayTime:(NSString *)thePlayTime
{
    self.title = theTitle;
    self.artist = theArtist;
    self.album = theAlbum;
    self.playTime = thePlayTime;
}

-(void) print
{
    NSLog (@"%-30s .%-15s .%-30s %-10s", [title UTF8String],
           [artist UTF8String], [album UTF8String], [playTime UTF8String]);
}
@end
