//
//  HeroDetailModel.m
//  BaseProject
//
//  Created by ios-52 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroDetailModel.h"

@implementation HeroDetailModel



+ (NSDictionary *)objectClassInArray{
    return @{@"like" : [Like class], @"hate" : [Hate class]};
}

+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"desc":@"description", @"ID":@"id"};
}

@end







@implementation Braum_Q
+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"desc":@"description", @"ID":@"id"};
}
@end




@implementation Like

@end


@implementation Hate

@end


