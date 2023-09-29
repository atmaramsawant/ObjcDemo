//
//  WeatherDataModel.m
//  ObjcDemo
//
//  Created by SJI-MAC on 30/09/23.
//

#import "WeatherDataModel.h"

@implementation WeatherDataModel

-(id)init{
self = [super init];
if (self) {
    _lat = @"";
    _lng= @"";
    _city = @"";
    _date = @"";
    _temperature = @"";
    _humidity = 0;
 }
return self;
}

@end
