//
//  BaseViewController.m
//  ObjcDemo
//
//  Created by SJI-MAC on 29/09/23.
//

#import "BaseViewController.h"

@interface BaseViewController ()
@property (nonatomic, strong) UIActivityIndicatorView *activityIndicator;
@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



-(void)showProgress {
    _activityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    _activityIndicator.center = self.view.center;
    [self.view addSubview:_activityIndicator];
    [_activityIndicator startAnimating];
}

-(void)hideProgress {
    [_activityIndicator stopAnimating];
    [_activityIndicator removeFromSuperview];
}

-(void)showSingleAlert:(NSString *)message {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@""
                                   message:message
                                   preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
       handler:^(UIAlertAction * action) {}];

    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
