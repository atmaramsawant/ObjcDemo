//
//  LoginViewModel.m
//  ObjcDemo
//
//  Created by SJI-MAC on 29/09/23.
//

#import "LoginViewModel.h"

@implementation LoginViewModel

-(void)signInWith:(NSString *)email :(NSString *)password {
    if (![self isValidEmail:email]) {
        [_delegate invalidEmail];
    }else if (![self isValidPassword:password]) {
        [_delegate invalidPassword];
    }else {
        [FirebaseManager.sharedInstance signInUserWith:email :password withCompletionHandler:^(id  _Nonnull responseObject) {
            [self->_delegate loginSuccessful:responseObject];
        } onFailure:^(NSError * _Nonnull error) {
            [self->_delegate loginFailed:error];
        }];
    }
}


@end
