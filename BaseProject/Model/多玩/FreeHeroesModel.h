//
//  FreeHeroesBaseModel.h
//  BaseProject
//
//  Created by ios-52 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class Free;
@interface FreeHeroesModel : BaseModel


@property (nonatomic, strong) NSArray<Free *> *free;

@property (nonatomic, copy) NSString *desc;


@end
@interface Free : NSObject

@property (nonatomic, copy) NSString *enName;

@property (nonatomic, copy) NSString *cnName;

@property (nonatomic, copy) NSString *rating;

@property (nonatomic, copy) NSString *location;

@property (nonatomic, copy) NSString *price;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *tags;

@end

