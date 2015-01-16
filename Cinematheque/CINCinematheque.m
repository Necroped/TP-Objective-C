//
//  CINCinematheque.m
//  Cinémathèque
//
//  Created by Matthias Lamoureux on 07/11/2013.
//  Copyright (c) 2013 Serli. All rights reserved.
//

#import "CINCinematheque.h"
#import "CINPeople.h"
#import "CINMovie.h"

@implementation CINCinematheque

+ (NSArray *) defaultMovieList {
    CINPeople * joelCoen = [[CINPeople alloc] initWithLastName:@"Coen" andFirstName:@"Joel" andBirthYear:1954 andBio:@"Films often include characters or places with the stereotypes of the regions they take place in (the Mid-Western accents and snow-covered landscapes for Fargo (1996), the Southwestern accents and barren deserts of Arizona for Arizona Junior (1987), the Southern accents and dust-bowl landscape for O Brother, Where Art Thou? (2000), Los Angeles accents and life-style in The Big Lebowski (1998), and the accents and cramped environments of Los Angeles in Barton Fink (1991))."];
    CINPeople * ethanCoen = [[CINPeople alloc] initWithLastName:@"Coen" andFirstName:@"Ethan" andBirthYear:1957 andBio:@"Typically makes movies set during a specific time period, often in the near-past (Fargo (1996) takes place in 1987, The Big Lebowski (1998) in 1991, and No country for old men (2007) in 1980)."];
    CINPeople * jeffBridges = [[CINPeople alloc] initWithLastName:@"Bridges" andFirstName:@"Jeff" andBirthYear:1949 andBio:@"The son of well-known film and TV star Lloyd Bridges and his long-time wife Dorothy Dean Bridges, Jeffrey Leon Bridges was born on December 4, 1949 in Los Angeles, California, and grew up amid the happening Hollywood scene with big brother Beau Bridges."];
    CINPeople * johnGoodman = [[CINPeople alloc] initWithLastName:@"Goodman" andFirstName:@"John" andBirthYear:1952 andBio:@"John Stephen Goodman is an American film, television, and stage actor. He is best known for his role as Dan Conner on the television series Roseanne (1988-1997) for which he won a Best Actor Golden Globe award in 1993."];
    CINPeople * julianneMoore = [[CINPeople alloc] initWithLastName:@"Moore" andFirstName:@"Julianne" andBirthYear:1960 andBio:@"The daughter of a military judge and a Scottish social worker, Julianne Moore was born in Fayetteville, North Carolina on December 3, 1960. "];
    CINPeople * steveBuscemi = [[CINPeople alloc] initWithLastName:@"Buscemi" andFirstName:@"Steve" andBirthYear:1957 andBio:@"Steve Buscemi was born in Brooklyn, New York, USA. He became interested in acting during his last year of high school. After graduating, he moved to Manhattan to study acting with John Strasberg. He began writing and performing original theatre pieces with fellow actor/writer Mark Boone Junior."];
    
    CINMovie * bigLebowski = [[CINMovie alloc] initWithTitle:@"Big Lebowski (The)" andYear:1998 andDirectors:@[joelCoen, ethanCoen] andActors:@[jeffBridges, johnGoodman, julianneMoore, steveBuscemi]];
    
    CINPeople * jonFavreau = [[CINPeople alloc] initWithLastName:@"Favreau" andFirstName:@"Jon" andBirthYear:1966 andBio:@"Initially an indie film favorite, actor Jon Favreau has progressed to strong mainstream visibility into the millennium and, after nearly two decades in the business, is still enjoying character stardom as well as earning notice as a writer/producer/director."];
    CINPeople * robertDowneyJr = [[CINPeople alloc] initWithLastName:@"Downey Jr." andFirstName:@"Robert" andBirthYear:1965 andBio:@"Robert Downey Jr. has evolved into one of the most respected actors in Hollywood. With an amazing list of credits to his name, he has managed to stay new and fresh even after three decades in the business."];
    CINPeople * gynethPaltrow = [[CINPeople alloc] initWithLastName:@"Paltrow" andFirstName:@"Gyneth" andBirthYear:1972 andBio:@"The daughter of noted producer Bruce Paltrow and Tony award-winning actress Blythe Danner, Gwyneth Paltrow was born in 1972 in Los Angeles. When Gwyneth was 11, the family moved to Massachusetts where her father began working in summer stock productions in the Berkshires. "];
    
    CINMovie * ironMan = [[CINMovie alloc] initWithTitle:@"Iron Man" andYear:2008 andDirectors:@[jonFavreau] andActors:@[robertDowneyJr, jeffBridges, gynethPaltrow, jonFavreau]];
    
    return @[bigLebowski, ironMan];
}

@end
