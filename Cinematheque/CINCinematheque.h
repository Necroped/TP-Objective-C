//
//  CINCinematheque.h
//  Cinémathèque
//
//  Created by Matthias Lamoureux on 07/11/2013.
//  Copyright (c) 2013 Serli. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Classe outil générant une liste de film.
 * Non destinée à être instanciée.
 */
@interface CINCinematheque : NSObject

/**
 * Renvoie la liste des films de la cinémathèque.
 *
 * @return Un tableau de CINMovie *
 */
+ (NSArray *) defaultMovieList;

@end
