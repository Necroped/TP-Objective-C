//
//  RVViewController.m
//  RechercheVille
//
//  Created by formation on 14/01/2015.
//  Copyright (c) 2015 formation. All rights reserved.
//

#import "RVViewController.h"


@interface RVViewController ()

@end

@implementation RVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.cities = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"villes" ofType:@"plist"]];
    self.filtered = self.cities;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

-(NSInteger)tableView: (UITableView *)tableView numberOfRowsInSection: (NSInteger)section
{
    return self.filtered.count;
}

-(UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath: (NSIndexPath*)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"CELL"];
    cell.textLabel.text = self.filtered[indexPath.row];
    return cell;
}

-(void) searchBar: (UISearchBar*) searchBar textDidChange:(NSString *)searchText
{
    if([searchText isEqualToString:@""])
    {
        self.filtered = self.cities;
    }
    else
    {
        NSPredicate * filter = [NSPredicate predicateWithFormat:@"SELF contains[cd] %@", searchText];
        self.filtered = [self.cities filteredArrayUsingPredicate:filter];
    }
    
    [self.citiesTableView reloadData];
}

-(void) searchBarSearchButtonClicked: (UISearchBar*) searchBar
{
    [searchBar resignFirstResponder];
}


@end
