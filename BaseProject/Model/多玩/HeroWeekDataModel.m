//
//  HeroWeekData.m
//  BaseProject
//
//  Created by ios-52 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroWeekDataModel.h"

@class HeroWeekDataDataModel,HeroWeekDataDataChartsModel,HeroWeekDataDataChartsRatioDataModel;

@implementation HeroWeekDataModel

@end
@implementation HeroWeekDataDataModel

+ (NSDictionary *)objectClassInArray{
    return @{@"charts" : [HeroWeekDataDataChartsModel class]};
}

@end


@implementation HeroWeekDataDataChartsModel

+ (NSDictionary *)objectClassInArray{
    return @{@"ratioData" : [HeroWeekDataDataChartsRatioDataModel class]};
}

+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName{
    return [propertyName underlineFromCamel];
}

@end


@implementation HeroWeekDataDataChartsRatioDataModel

@end


