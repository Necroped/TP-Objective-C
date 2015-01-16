//
//  PeopleViewController.m
//  Cinematheque
//
//  Created by formation on 15/01/2015.
//  Copyright (c) 2015 formation. All rights reserved.
//

#import "PeopleViewController.h"
#import "NSDate+Components.h"

@interface PeopleViewController ()

@end

@implementation PeopleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void) viewWillAppear:(BOOL)animated
{
    self.nameLabel.text = [NSString stringWithFormat:@"%@ %@", [self.people lastName], [self.people firstName]];
    self.ageLabel.text = [NSString stringWithFormat:@"%d", ([NSDate date].year - [self.people birthYear])];
    self.bioTextView.text = [self.people bio];
    self.navigationItem.title = (self.isActor == YES) ? @"Acteur" : @"Réalisateur";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
