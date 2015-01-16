//
//  MovieTableViewController.m
//  Cinematheque
//
//  Created by formation on 15/01/2015.
//  Copyright (c) 2015 formation. All rights reserved.
//

#import "MovieTableViewController.h"
#import "MovieViewController.h"
#import "CINCinematheque.h"
#import "CINMovie.h"

@interface MovieTableViewController ()

@end

@implementation MovieTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.movieList = [CINCinematheque defaultMovieList];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    
    return self.movieList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"CELL" forIndexPath:indexPath];
    cell.textLabel.text = [self.movieList[indexPath.row] title];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", [self.movieList[indexPath.row] year]];
    
    return cell;
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath * index = [self.tableView indexPathForSelectedRow];
    
    MovieViewController * dest = segue.destinationViewController;
    dest.movie = (CINMovie *) self.movieList[index.row];
    
}

@end
