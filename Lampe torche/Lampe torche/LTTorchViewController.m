//
//  LTTorchViewController.m
//  Lampe torche
//
//  Created by formation on 15/01/2015.
//  Copyright (c) 2015 formation. All rights reserved.
//

#import "LTTorchViewController.h"
#import "LTViewController.h"

@interface LTTorchViewController ()

@end

@implementation LTTorchViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.view.backgroundColor = self.couleur;
    if(self.clignotant)
    {
        [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(onTimer:) userInfo:nil repeats:YES];
    }
}

-(void) onTimer:(NSTimer *) timer
{
    if([self.view.backgroundColor isEqual:self.couleur])
    {
        self.view.backgroundColor = [UIColor blackColor];
    }
    else
    {
        self.view.backgroundColor = self.couleur;
    }
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    LTViewController * dest = segue.destinationViewController;
    dest.clignotantForTheSwitch = self.clignotant;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
