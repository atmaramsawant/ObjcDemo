//
//  WeatherService.h
//  ObjcDemo
//
//  Created by SJI-MAC on 29/09/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^_Nullable SuccessCompletionBlock)(id responseObject);
typedef void (^_Nullable FailureCompletionBlock)(NSError *error);

@interface WeatherService : NSObject

+(void)getWeatherData:(NSString *)Url withCompletionHandler :(SuccessCompletionBlock)successBlock onFailure:(FailureCompletionBlock)failureBlock;

@end

NS_ASSUME_NONNULL_END
