//
//  signUpViewModel.m
//  ObjcDemo
//
//  Created by SJI-MAC on 29/09/23.
//

#import "signUpViewModel.h"

@implementation signUpViewModel

-(void)signUpWith:(NSString *)email :(NSString *)password {
    if (![self isValidEmail:email]) {
        [_delegate invalidEmail];
    }else if (![self isValidPassword:password]) {
        [_delegate invalidPassword];
    }else {
        [FirebaseManager.sharedInstance signUpUserWith:email :password withCompletionHandler:^(id  _Nonnull responseObject) {
            [self->_delegate signUpSuccessful:responseObject];
        } onFailure:^(NSError * _Nonnull error) {
            [self->_delegate signUpFailed:error];
        }];
    }
}

@end
