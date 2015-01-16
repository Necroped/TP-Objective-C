//
//  MovieViewController.h
//  Cinematheque
//
//  Created by formation on 15/01/2015.
//  Copyright (c) 2015 formation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CINMovie.h"

@interface MovieViewController : UIViewController <UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UILabel * titleLabel;
@property (strong, nonatomic) IBOutlet UILabel * yearLabel;
@property (strong, nonatomic) IBOutlet UITableView * peopleTableView;

@property (strong, atomic) CINMovie * movie;

@end
