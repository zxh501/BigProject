//
//  DuoWanBaseModel.m
//  BaseProject
//
//  Created by ios-52 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TuWanBaseModel.h"

@implementation TuWanBaseModel



@end

@implementation Data

+ (NSDictionary *)objectClassInArray{
    return @{@"indexpic" : [Indexpic class], @"list" : [Indexpic class]};
}

@end


@implementation Indexpic

+ (NSDictionary *)objectClassInArray{
    return @{@"showitem" : [Showitem class]};
}

+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"desc":@"description", @"typeName":@"typename"};
}

@end


@implementation Infochild

@end


@implementation Showitem

@end


@implementation Info

@end








