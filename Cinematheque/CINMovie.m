//
//  CINMovie.m
//  Cinémathèque
//
//  Created by Matthias Lamoureux on 07/11/2013.
//  Copyright (c) 2013 Serli. All rights reserved.
//

#import "CINMovie.h"

@implementation CINMovie

- (instancetype) initWithTitle:(NSString *) aTitle andYear:(NSInteger) aYear andDirectors:(NSArray *) aDirectors andActors:(NSArray *) aActors {
    self = [super init];
    
    if (self) {
        self.title = aTitle;
        self.year = aYear;
        self.directors = aDirectors;
        self.actors = aActors;
    }
    
    return self;
}

@end
