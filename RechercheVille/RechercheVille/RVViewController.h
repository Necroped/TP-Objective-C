//
//  RVViewController.h
//  RechercheVille
//
//  Created by formation on 14/01/2015.
//  Copyright (c) 2015 formation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RVViewController : UIViewController <UITableViewDataSource, UISearchBarDelegate>

@property (strong, nonatomic) IBOutlet UITableView *citiesTableView;
@property (strong, nonatomic) NSArray * cities;
@property (strong, nonatomic) NSArray * filtered;

@end
