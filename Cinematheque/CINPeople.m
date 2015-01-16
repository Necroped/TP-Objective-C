//
//  CINPeople.m
//  Cinémathèque
//
//  Created by Matthias Lamoureux on 07/11/2013.
//  Copyright (c) 2013 Serli. All rights reserved.
//

#import "CINPeople.h"

@implementation CINPeople

- (instancetype) initWithLastName:(NSString *) aLastName andFirstName:(NSString *) aFirstName andBirthYear:(NSInteger) aBirthYear andBio:(NSString *)aBio {
    self = [super init];
    
    if (self) {
        self.lastName = aLastName;
        self.firstName = aFirstName;
        self.birthYear = aBirthYear;
        self.bio = aBio;
    }
    
    return self;
}

@end
