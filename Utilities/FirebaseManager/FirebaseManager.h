//
//  FirebaseManager.h
//  ObjcDemo
//
//  Created by SJI-MAC on 29/09/23.
//

#import <Foundation/Foundation.h>
@import FirebaseCore;
@import FirebaseAuth;

NS_ASSUME_NONNULL_BEGIN

typedef void (^_Nullable SuccessCompletionBlock)(id responseObject);
typedef void (^_Nullable FailureCompletionBlock)(NSError *error);

@interface FirebaseManager : NSObject {
    
}

+ (FirebaseManager*)sharedInstance;

- (void)signInUserWith:(NSString *)email :(NSString *)password withCompletionHandler:(SuccessCompletionBlock)successBlock onFailure:(FailureCompletionBlock)failureBlock;

- (void)signUpUserWith:(NSString *)email :(NSString *)password withCompletionHandler:(SuccessCompletionBlock)successBlock onFailure:(FailureCompletionBlock)failureBlock;

@end

NS_ASSUME_NONNULL_END
