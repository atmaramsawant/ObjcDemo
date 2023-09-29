//
//  BaseViewModel.h
//  ObjcDemo
//
//  Created by SJI-MAC on 29/09/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewModel : NSObject

-(BOOL)isValidEmail:(NSString*)email;
-(BOOL)isValidPassword:(NSString *)passwordString;

@end

NS_ASSUME_NONNULL_END
