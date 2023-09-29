//
//  FirebaseManager.m
//  ObjcDemo
//
//  Created by SJI-MAC on 29/09/23.
//

#import "FirebaseManager.h"

@implementation FirebaseManager

#pragma mark Singleton Methods

static FirebaseManager *_sharedInstance = nil;


+ (FirebaseManager*)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];

    });

    return _sharedInstance;
}

-(void)signInUserWith:(NSString *)email :(NSString *)password withCompletionHandler:(SuccessCompletionBlock)successBlock onFailure:(FailureCompletionBlock)failureBlock {
    
    [[FIRAuth auth] signInWithEmail:email
                           password:password
                         completion:^(FIRAuthDataResult * _Nullable authResult,
                                      NSError * _Nullable error) {
        if (error == nil) {
            successBlock(authResult);
        }else {
            failureBlock(error);
        }
    }];
}

-(void)signUpUserWith:(NSString *)email :(NSString *)password withCompletionHandler:(SuccessCompletionBlock)successBlock onFailure:(FailureCompletionBlock)failureBlock {
    
    [[FIRAuth auth] createUserWithEmail:email
                               password:password
                             completion:^(FIRAuthDataResult * _Nullable authResult,
                                          NSError * _Nullable error) {
        if (error == nil) {
            successBlock(authResult);
        }else {
            failureBlock(error);
        }
        
    }];
    
}

@end
