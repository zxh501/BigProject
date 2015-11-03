//
//  GiftModel.h
//  BaseProject
//
//  Created by ios-52 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class SkillA;
@interface GiftModel : BaseModel


@property (nonatomic, strong) NSArray<SkillA *> *a;

@property (nonatomic, strong) NSArray<SkillA *> *d;

@property (nonatomic, strong) NSArray<SkillA *> *g;


@end
@interface SkillA : NSObject

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, strong) NSArray<NSString *> *level;

@end



