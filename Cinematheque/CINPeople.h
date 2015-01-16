//
//  CINPeople.h
//  Cinémathèque
//
//  Created by Matthias Lamoureux on 07/11/2013.
//  Copyright (c) 2013 Serli. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Classe gérant une personnalité et ses caractéristiques principales.
 */
@interface CINPeople : NSObject

/// Nom de famille de la personnalité
@property (nonatomic, copy) NSString * lastName;

/// Prénom de la personnalité
@property (nonatomic, copy) NSString * firstName;

/// Année de naissance de la personnalité
@property (nonatomic, assign) NSInteger birthYear;

/// Biographie succincte de la personnalité
@property (nonatomic, copy) NSString * bio;

/**
 * Initialise une personalité.
 * 
 * @param aLastName Nom de famille de la personnalité
 * @param aFirstName Prénom de la personnalité
 * @param aBirthYear Année de naissance de la personnalité
 * @param aBio Biographie succincte de la personnalité
 */
- (instancetype) initWithLastName:(NSString *) aLastName andFirstName:(NSString *) aFirstName andBirthYear:(NSInteger) aBirthYear andBio:(NSString *)aBio;

@end
