//
//  WeatherDataModel.h
//  ObjcDemo
//
//  Created by SJI-MAC on 30/09/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WeatherDataModel : NSObject {
    
}

@property (nonatomic,strong) NSString *temperature;
@property (nonatomic,strong) NSNumber *humidity;
@property (nonatomic,strong) NSString *lat;
@property (nonatomic,strong) NSString *lng;
@property (nonatomic,strong) NSString *date;
@property (nonatomic,strong) NSString *city;


@end

NS_ASSUME_NONNULL_END
