//
//  GiftModel.m
//  BaseProject
//
//  Created by ios-52 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "GiftModel.h"

@implementation GiftModel


+ (NSDictionary *)objectClassInArray{
    return @{@"a" : [SkillA class], @"d" : [SkillA class], @"g" : [SkillA class]};
}
@end
@implementation SkillA
+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"ID":@"id"};
}
@end



