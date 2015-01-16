//
//  HLOViewController.m
//  calculatrice
//
//  Created by formation on 14/01/2015.
//  Copyright (c) 2015 formation. All rights reserved.
//

#import "HLOViewController.h"

@interface HLOViewController ()

@end

@implementation HLOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.model = [[CALCalculetteModel alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickOnButton:(UIButton *)sender
{
    if(sender.tag>=0)
    {
        [self.model digit:sender.tag];
    }
    else
    {
        switch(sender.tag)
        {
            case -1: [self.model decimalSeparator]; break;
            case -2: [self.model clear]; break;
            case -3: [self.model plusMinus]; break;
            case -4: [self.model operation:clDiv]; break;
            case -5: [self.model operation:clMul]; break;
            case -6: [self.model operation:clSub]; break;
            case -7: [self.model operation:clAdd]; break;
            case -8: [self.model equals]; break;
        }
    }
    [self updateDisplay];
}

-(void) updateDisplay
{
    self.displayResult.text = [self.model display];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self updateDisplay];
}

@end
