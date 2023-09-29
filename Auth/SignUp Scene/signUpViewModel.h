//
//  signUpViewModel.h
//  ObjcDemo
//
//  Created by SJI-MAC on 29/09/23.
//

#import <Foundation/Foundation.h>
#import "BaseViewModel.h"
#import "FirebaseManager.h"

NS_ASSUME_NONNULL_BEGIN

@protocol SignupProtocol <NSObject>
- (void)invalidEmail;
- (void)invalidPassword;
- (void)signUpFailed:(NSError *)error;
- (void)signUpSuccessful:(NSDictionary *)Dict;
@end

@interface signUpViewModel : BaseViewModel

-(void)signUpWith:(NSString *)email :(NSString *)password;

@property (nonatomic, weak) id<SignupProtocol> delegate;

@end

NS_ASSUME_NONNULL_END
