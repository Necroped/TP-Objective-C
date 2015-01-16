//
//  LTViewController.m
//  Lampe torche
//
//  Created by formation on 15/01/2015.
//  Copyright (c) 2015 formation. All rights reserved.
//

#import "LTViewController.h"
#import "LTTorchViewController.h"

@interface LTViewController ()

@end

@implementation LTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    LTTorchViewController * dest = segue.destinationViewController;
    if([segue.identifier isEqualToString:@"BLANC"])
    {
        dest.couleur = [UIColor whiteColor];
    }
    else if ([segue.identifier isEqualToString:@"ROUGE"])
    {
         dest.couleur = [UIColor redColor];
    }
    else if ([segue.identifier isEqualToString:@"VERT"])
    {
         dest.couleur = [UIColor greenColor];
    }
    
    dest.clignotant = self.switchCouleur.isOn;

}

-(void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.switchCouleur.on = self.clignotantForTheSwitch;
}

@end
