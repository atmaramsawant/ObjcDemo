//
//  LoginViewModel.h
//  ObjcDemo
//
//  Created by SJI-MAC on 29/09/23.
//

#import <Foundation/Foundation.h>
#import "BaseViewModel.h"
#import "FirebaseManager.h"

@protocol LoginProtocol <NSObject>
- (void)invalidEmail;
- (void)invalidPassword;
- (void)loginFailed:(NSError *)error;
- (void)loginSuccessful:(NSDictionary *)Dict;
@end

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewModel : BaseViewModel

-(void)signInWith:(NSString *)email :(NSString *)password;

@property (nonatomic, weak) id<LoginProtocol> delegate;

@end

NS_ASSUME_NONNULL_END
