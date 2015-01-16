//
//  MovieViewController.m
//  Cinematheque
//
//  Created by formation on 15/01/2015.
//  Copyright (c) 2015 formation. All rights reserved.
//

#import "MovieViewController.h"
#import "CINPeople.h"
#import "PeopleViewController.h"
#import "CINMovie.h"

@interface MovieViewController ()

@end

@implementation MovieViewController

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
    self.titleLabel.text = [self.movie title];
    self.yearLabel.text = [NSString stringWithFormat:@"%d",[self.movie year]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return (section == 0) ? self.movie.directors.count : self.movie.actors.count ;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * cellType = (indexPath.section == 0) ? @"DIRECTOR_CELL" : @"ACTOR_CELL";
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellType forIndexPath:indexPath];
    
    NSArray * personne = (indexPath.section == 0) ? self.movie.directors : self.movie.actors;
    
    CINPeople * people = personne[indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", people.lastName, people.firstName];
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath * indexPath = [self.peopleTableView indexPathForSelectedRow];
    NSArray * personne = (indexPath.section == 0) ? self.movie.directors : self.movie.actors;
    CINPeople * people = personne[indexPath.row];
    PeopleViewController * dest = segue.destinationViewController;
    dest.people = people;
    dest.isActor = (indexPath.section == 1);
}



@end