//
//  WeatherService.m
//  ObjcDemo
//
//  Created by SJI-MAC on 29/09/23.
//

#import "WeatherService.h"

@implementation WeatherService

+(void)getWeatherData:(NSString *)Url withCompletionHandler:(SuccessCompletionBlock)successBlock onFailure:(FailureCompletionBlock)failureBlock {
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:Url]];
    [request setHTTPMethod:@"GET"];

    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error == nil) {
            successBlock(data);
        }else {
            failureBlock(error);
        }
    }] resume];
}

@end
