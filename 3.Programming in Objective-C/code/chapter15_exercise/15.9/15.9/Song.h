//
//  Song.h
//  15.9
//
//  Created by wpgshatu on 13-8-1.
//  Copyright (c) 2013年 wpgholdings. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property (copy, nonatomic) NSString * title, *artist, * album, *playTime;

-(void) settitle: (NSString *) theTitle
       andArtist: (NSString *) theArtist
        andAlbum: (NSString *) theAlbum
     andPlayTime: (NSString *) thePlayTime;

-(void) print;

@end
