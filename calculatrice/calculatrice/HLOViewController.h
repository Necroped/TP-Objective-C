//
//  HLOViewController.h
//  calculatrice
//
//  Created by formation on 14/01/2015.
//  Copyright (c) 2015 formation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CALCalculetteModel.h"

@interface HLOViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *displayResult;
- (IBAction)clickOnButton:(UIButton *)sender;

@property (strong, nonatomic) CALCalculetteModel * model;

@end
