//
//  DetailViewController.m
//  ObjcDemo
//
//  Created by SJI-MAC on 30/09/23.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize dataModel;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

-(void)setupUI{
    _cityNameLabel.text = [NSString stringWithFormat:@"City: %@", dataModel.city];
    _dateLabel.text = [NSString stringWithFormat:@"Date: %@", dataModel.date];
    _temperatureLabel.text = [NSString stringWithFormat:@"Temperatute: %@", dataModel.temperature];
    _humidityLabel.text = [NSString stringWithFormat:@"Humidity: %@", dataModel.humidity];
}



@end
