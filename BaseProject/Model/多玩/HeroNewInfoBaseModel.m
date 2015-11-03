//
//  HeroNewInfoBaseModel.m
//  BaseProject
//
//  Created by ios-52 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroNewInfoBaseModel.h"

@implementation HeroNewInfoBaseModel


+ (NSDictionary *)objectClassInArray{
    return @{@"changeLog" : [Changelog class]};
}
@end

@implementation Changelog

@end


