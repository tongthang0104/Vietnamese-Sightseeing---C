//
//  SightSeeingDetailViewController.m
//  Vietnam's Sightseeings - C
//
//  Created by Thang H Tong on 11/30/15.
//  Copyright © 2015 Thang. All rights reserved.
//

#import "SightSeeingDetailViewController.h"
#import "SightSeeing.h"


@interface SightSeeingDetailViewController ()

#pragma mark - Properties
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *areaLabel;
@property (weak, nonatomic) IBOutlet UILabel *populationLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageVIew;

@end

@implementation SightSeeingDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateWithSightseeings:self.sightSeeing];
}

-(void)updateWithSightseeings:(SightSeeing *)sightSeeing
{
    self.title = sightSeeing.name;
    self.locationLabel.text = sightSeeing.location;
    self.areaLabel.text = [NSString stringWithFormat:@"%@ Kms^2", @(sightSeeing.area)];
    self.populationLabel.text = [NSString stringWithFormat:@"%@ people", @(sightSeeing.population)];
    self.imageVIew.image = [UIImage imageNamed:sightSeeing.imageName];
}

-(void)setSightSeeing:(SightSeeing *)sightSeeing
{
    _sightSeeing = sightSeeing;
    [self updateWithSightseeings:sightSeeing];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
