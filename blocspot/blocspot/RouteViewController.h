//
//  RouteViewController.h
//  blocspot
//
//  Created by Ziggy on 5/26/16.
//  Copyright © 2016 DonaldDixon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface RouteViewController : UIViewController
<MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *routeMap;
@property (strong, nonatomic) MKPointAnnotation *destination;
@property (strong, nonatomic) MKMapItem *tableDestination;
@property BOOL didComeFromTableView;

@end
