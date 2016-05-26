//
//  ResultsTableViewController.h
//  blocspot
//
//  Created by Ziggy on 5/26/16.
//  Copyright © 2016 DonaldDixon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "ResultsTableCell.h"
#import "RouteViewController.h"

@interface ResultsTableViewController : UITableViewController
@property (strong, nonatomic) NSArray *mapItems;
@end