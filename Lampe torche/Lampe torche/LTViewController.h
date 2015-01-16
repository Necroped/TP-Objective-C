//
//  LTViewController.h
//  Lampe torche
//
//  Created by formation on 15/01/2015.
//  Copyright (c) 2015 formation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LTViewController : UIViewController


@property (strong, nonatomic) IBOutlet UISwitch *switchCouleur;
@property (assign, nonatomic) BOOL clignotantForTheSwitch;

@end
