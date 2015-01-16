//
//  CINMovie.h
//  Cinémathèque
//
//  Created by Matthias Lamoureux on 07/11/2013.
//  Copyright (c) 2013 Serli. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Classe gérant un film et ses caractéristiques principales.
 */
@interface CINMovie : NSObject

/// Le titre du film
@property (nonatomic, copy) NSString * title;

/// L'année de sortie du film
@property (nonatomic, assign) NSInteger year;

/// La liste des réalisateurs
@property (nonatomic, strong) NSArray * directors;

/// La liste des acteurs principaux
@property (nonatomic, strong) NSArray * actors;

/**
 * Initialise un film.
 *
 * @param aTitle Titre du film
 * @param aYear Année de sortie du film
 * @param aDirectors Liste des réalisateurs
 * @param aActors Liste des acteurs principaux
 */
- (instancetype) initWithTitle:(NSString *) aTitle andYear:(NSInteger) aYear andDirectors:(NSArray *) aDirectors andActors:(NSArray *) aActors;

@end
