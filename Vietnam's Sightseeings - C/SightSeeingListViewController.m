//
//  SightSeeingListViewController.m
//  Vietnam's Sightseeings - C
//
//  Created by Thang H Tong on 11/30/15.
//  Copyright © 2015 Thang. All rights reserved.
//

#import "SightSeeingListViewController.h"
#import "SightSeeing.h"
#import "SightSeeingController.h"
#import "SightSeeingDetailViewController.h"

@interface SightSeeingListViewController ()

@end

@implementation SightSeeingListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[SightSeeingController sightSeeings] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"sightCell" forIndexPath:indexPath];
    
    SightSeeing *sightSeeings = [SightSeeingController sightSeeings][indexPath.row];
    cell.textLabel.text = sightSeeings.name;
    cell.detailTextLabel.text = sightSeeings.location;
    cell.imageView.contentMode = UIViewContentModeScaleAspectFill;
    cell.imageView.image = [UIImage imageNamed:sightSeeings.imageName];

    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"toDetailView"]) {
        SightSeeingDetailViewController *destionationController =  segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SightSeeing *sightSeeing = [SightSeeingController sightSeeings][indexPath.row];
        destionationController.sightSeeing = sightSeeing;
    }
}


@end
