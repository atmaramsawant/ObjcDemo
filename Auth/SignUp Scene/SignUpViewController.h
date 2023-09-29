//
//  SignUpViewController.h
//  ObjcDemo
//
//  Created by SJI-MAC on 28/09/23.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "signUpViewModel.h"
#import "NavigationRouter.h"
#import <Photos/Photos.h>

NS_ASSUME_NONNULL_BEGIN

@interface SignUpViewController : BaseViewController <SignupProtocol, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@end

NS_ASSUME_NONNULL_END
