//
//  ResultsTableViewController.m
//  blocspot
//
//  Created by Ziggy on 5/26/16.
//  Copyright © 2016 DonaldDixon. All rights reserved.
//

#import "ResultsTableViewController.h"

@implementation ResultsTableViewController

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.mapItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"resultCell";
    ResultsTableCell *cell =
    [tableView dequeueReusableCellWithIdentifier:CellIdentifier
                                    forIndexPath:indexPath];
    
    long row = [indexPath row];
    
    MKMapItem *item = self.mapItems[row];
    
    cell.nameLabel.text = item.name;
    cell.phoneLabel.text = item.phoneNumber;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    RouteViewController *routeController =
    [segue destinationViewController];
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    long row = [indexPath row];
    
    routeController.didComeFromTableView = YES;
    routeController.tableDestination = _mapItems[row];
}


@end
