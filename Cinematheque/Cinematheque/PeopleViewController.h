//
//  PeopleViewController.h
//  Cinematheque
//
//  Created by formation on 15/01/2015.
//  Copyright (c) 2015 formation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CINPeople.h"

@interface PeopleViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel * nameLabel;

@property (strong, nonatomic) IBOutlet UILabel * ageLabel;

@property (strong, nonatomic) IBOutlet UITextView *bioTextView;

@property (strong, atomic) CINPeople * people;
@property (assign, nonatomic) BOOL isActor;

@end
