//
//  NavigationRouter.h
//  ObjcDemo
//
//  Created by SJI-MAC on 28/09/23.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "WeatherDataModel.h"
#import "DetailViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface NavigationRouter : NSObject

+(void)showSignupFrom:(UIViewController *)controller;
+(void)showProfileFrom:(UIViewController *)controller;
+(void)showWeatherDetailFrom:(UIViewController *)controller :(WeatherDataModel *)dataModel;

@end

NS_ASSUME_NONNULL_END
