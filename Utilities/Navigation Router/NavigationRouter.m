//
//  NavigationRouter.m
//  ObjcDemo
//
//  Created by SJI-MAC on 28/09/23.
//

#import "NavigationRouter.h"


@implementation NavigationRouter

+(void)showSignupFrom:(UIViewController *)controller {
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController* signupVC = [storyboard instantiateViewControllerWithIdentifier:@"SignUpViewController"];
    [controller.navigationController pushViewController:signupVC animated:YES];
}

+(void)showProfileFrom:(UIViewController *)controller {
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController* profileVC = [storyboard instantiateViewControllerWithIdentifier:@"ProfileViewController"];
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:profileVC];
    navController.modalPresentationStyle = UIModalPresentationFullScreen;
    [controller presentViewController:navController animated:YES completion:nil];
}

+(void)showWeatherDetailFrom:(UIViewController *)controller: (WeatherDataModel *)dataModel {
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DetailViewController* detailVC = [storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    detailVC.dataModel = dataModel;
    detailVC.modalPresentationStyle = UIModalPresentationFullScreen;
    [controller.navigationController pushViewController:detailVC animated:YES];
}

@end
