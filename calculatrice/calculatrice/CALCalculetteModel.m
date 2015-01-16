//
//  CALCalculetteModel.m
//  Calculette
//
//  Created by Matthias Lamoureux on 06/11/2013.
//  Copyright (c) 2013 Serli. All rights reserved.
//

#import "CALCalculetteModel.h"

@interface CALCalculetteModel()

/// Valeur courante, en train d'être saisie par l'utilisateur.
@property (nonatomic, copy) NSString * currentValue;

/// Valeur précédente, celle qui n'est plus visible.
@property (nonatomic, copy) NSString * previousValue;

/// Opération actuellement en mémoire.
@property (nonatomic, assign) CALOperation operation;

/// Est-ce que l'affichage actuel est le résultat d'une opération.
@property (nonatomic, assign) BOOL isResult;

@end

@implementation CALCalculetteModel

/**
 * Initialiseur par défaut.
 * Appelle la méthode @ref CALCalculetteModel::clear pour tout réinitialiser.
 */
- (id) init {
    self = [super init];
    
    if (self) {
        [self clear];
    }
    
    return self;
}

- (NSString *) display {
    // Si la valeur courante est vide (ie on vient de taper une opération)
    // on continue d'afficher la valeur précédente
    if ([self.currentValue isEqualToString:@""]) {
        return self.previousValue;
    }
    else {
        return self.currentValue;
    }
}

- (void) clear {
    self.operation = clNone;
    self.currentValue = @"0";
    self.previousValue = @"";
    self.isResult = NO;
}

/**
 * Lorsque c'est un resultat qui est affiché, on ne peut plus saisir 
 * de chiffre pour le modifier, on doit donc réinitialiser la valeur courante.
 */
- (void) resetResult {
    if (self.isResult) {
        self.previousValue = self.currentValue;
        self.currentValue = @"0";
        self.isResult = NO;
    }
}

- (void) plusMinus {
    if ([self.currentValue hasPrefix:@"-"]) {
        self.currentValue = [self.currentValue substringFromIndex:1];
        if ([self.currentValue isEqualToString:@""]) {
            self.currentValue = @"0";
        }
    }
    else {
        self.currentValue = [@"-" stringByAppendingString:self.currentValue];
        if ([self.currentValue isEqualToString:@"-0"]) {
            self.currentValue = @"-";
        }
    }
}

- (void) decimalSeparator {
    [self resetResult];
    
    if ([self.currentValue rangeOfString:@"."].location == NSNotFound) {
        self.currentValue = [self.currentValue stringByAppendingString:@"."];
    }
    if ([self.currentValue isEqualToString:@"."]) {
        self.currentValue = @"0.";
    }
}

- (void) digit:(NSInteger) aDigit {
    if ((aDigit >= 0) && (aDigit < 10)) {
        [self resetResult];
        
        NSString * digit = [NSString stringWithFormat:@"%d",aDigit];
        // Si la valeur courante vaut 0, alors on le remplace par le chiffre tapé
        if ([self.currentValue isEqualToString:@"0"]) {
            self.currentValue = digit;
        }
        // Si la valeur courante vaut -0, alors on le remplace par le chiffre tapé
        else if ([self.currentValue isEqualToString:@"-0"]) {
            self.currentValue = [@"-" stringByAppendingString:digit];
        }
        // Sinon on ajoute le chiffre
        else {
            self.currentValue = [self.currentValue stringByAppendingString:digit];
        }
    }
}

- (void) operation:(CALOperation) aOperation {
    // S'il n'y a aucune opération courante, on passe la valeur courante dans la valeur précédente
    // et on vide la valeur courante
    if (self.operation == clNone) {
        self.previousValue = self.currentValue;
        self.currentValue = @"";
        self.isResult = NO;
    }
    // Si la valeur courante n'est pas vide (ie la dernière touche n'est pas une opération)
    // alors on fait le calcul
    else if (![self.currentValue isEqualToString:@""]) {
        [self equals];
    }
    // Dans tous les cas on enregistre l'opération courante
    self.operation = aOperation;
}

- (void) equals {
    double previous = [self.previousValue doubleValue];
    double current = [self.currentValue doubleValue];
    
    switch (self.operation) {
        case clAdd:
            self.currentValue = [NSString stringWithFormat:@"%g",previous+current];
            break;
        case clSub:
            self.currentValue = [NSString stringWithFormat:@"%g",previous-current];
            break;
        case clMul:
            self.currentValue = [NSString stringWithFormat:@"%g",previous*current];
            break;
        case clDiv:
            if (abs(current) < 10e-7) {
                self.currentValue = @"Erreur";
            }
            else {
                self.currentValue = [NSString stringWithFormat:@"%g",previous/current];
            }
            break;
        default:
            break;
    }
    
    self.previousValue = @"";
    self.operation = clNone;
    self.isResult = YES;
}

@end
