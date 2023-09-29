//
//  BaseViewController.h
//  ObjcDemo
//
//  Created by SJI-MAC on 29/09/23.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : UIViewController

-(void)showSingleAlert:(NSString *)message;
-(void)showProgress;
-(void)hideProgress;

@end

NS_ASSUME_NONNULL_END
