//
//  DetailViewController.h
//  ObjcDemo
//
//  Created by SJI-MAC on 30/09/23.
//

#import <UIKit/UIKit.h>
#import "WeatherDataModel.h"
#import "BaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : BaseViewController

@property (nonatomic, weak) WeatherDataModel *dataModel;
@property (nonatomic, weak) IBOutlet UILabel *cityNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *temperatureLabel;
@property (nonatomic, weak) IBOutlet UILabel *humidityLabel;
@property (nonatomic, weak) IBOutlet UILabel *dateLabel;
@end

NS_ASSUME_NONNULL_END
