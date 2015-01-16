//
//  CALCalculetteModel.h
//  Calculette
//
//  Created by Matthias Lamoureux on 06/11/2013.
//  Copyright (c) 2013 Serli. All rights reserved.
//

#import <Foundation/Foundation.h>

/// Énumération représentant les opérations possibles
typedef enum {
    clNone,
    clAdd,
    clSub,
    clMul,
    clDiv
} CALOperation;


@interface CALCalculetteModel : NSObject

/**
 * Affiche l'état de la calculatrice
 *
 * @result La chaîne de caractères à afficher sur l'écran de la calculatrice
 */
- (NSString *) display;

/**
 * Efface ce qu'il y a à l'écran.
 * Répond à la touche "C" de la calculette. 
 */
- (void) clear;

/**
 * Change le signe de ce qu'il y a à l'écran.
 * Répond à la touche "+/-" de la calculette.
 */
- (void) plusMinus;

/**
 * Ajoute le séparateur décimal à ce qui est tapé.
 * Répond à la touche "," de la calculette.
 */
- (void) decimalSeparator;

/**
 * Tape un chiffre.
 * Répond à l'une des touches chiffrée de la calculette.
 *
 * @param aDigit Le chiffre tapé.
 */
- (void) digit:(NSInteger) aDigit;

/**
 * Renseigne l'opération courante.
 * Répond à l'une des quatre touches opération de la calculette.
 *
 * @param aOperation L'opération tapée.
 * @see CALOperation
 */
- (void) operation:(CALOperation) aOperation;

/**
 * Valide l'opération.
 * Répond à la touche "=" de la calculette.
 */
- (void) equals;

@end
