//
//  DuoWanNetManager.h
//  BaseProject
//
//  Created by ios-52 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "FreeHeroesModel.h"
#import "AllHeroesModel.h"
#import "GiftModel.h"
#import "HeroDetailModel.h"
#import "HeroChuZhuangModel.h"
#import "HeroGiftAndRunBaseModel.h"
#import "HeroNewInfoBaseModel.h"
#import "HeroSkin.h"
#import "HeroVideoBaseModel.h"
#import "HeroWeekDataModel.h"
#import "ItemDetailModel.h"
#import "RunesModel.h"
#import "SumAbilityModel.h"
#import "ToolMenuBaseModel.h"
#import "ZBCategoryBaseModel.h"
#import "ZBItemListBaseModel.h"
#import "HeroGroupModel.h"


@interface DuoWanNetManager : BaseNetManager
//免费英雄
+ (id)getFreeHeroesModelCompleteHandle:(void(^)(FreeHeroesModel *model, NSError *error))comleteHandle;
//全部英雄
+ (id)getAllHeroesModelCompleteHandle:(void(^)(AllHeroesModel *model, NSError *error))comleteHandle;
//天赋
+ (id)getGiftModelCompleteHandle:(void(^)(GiftModel *model, NSError *error))comleteHandle;
//英雄资料
+ (id)getHeroDetailModelllWithHeroName:(NSString *)heroName CompleteHandle:(void(^)(HeroDetailModel *model, NSError *error))comleteHandle;
//英雄出装
+ (id)getHeroChuZhuangModelWithHeroName:(NSString *)heroName CompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle;
//英雄天赋符文
+ (id)getHeroGiftAndRunBaseModelWithHeroName:(NSString *)heroName CompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle;
//英雄改动
+ (id)getHeroNewInfoBaseModelWithHeroName:(NSString *)heroName CompleteHandle:(void(^)(HeroNewInfoBaseModel *model, NSError *error))comleteHandle;
//英雄皮肤
+ (id)getHeroSkinWithHeroName:(NSString *)heroName CompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle;
//英雄视频
+ (id)getHeroVideoBaseModelWithHeroName:(NSString *)heroName pageIndex:(NSInteger)pageIndex CompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle;
//一周数据
+ (id)getHeroWeekDataModelWithHeroId:(NSInteger)heroId CompleteHandle:(void(^)(HeroWeekDataModel *model, NSError *error))comleteHandle;
//装备详情
+ (id)getItemDetailModelWithItemId:(NSInteger)itemId CompleteHandle:(void(^)(ItemDetailModel *model, NSError *error))comleteHandle;
//符文列表
+ (id)getRunesModelcompleteHandle:(void(^)(RunesModel *model, NSError *error))comleteHandle;
//召唤师技能列表
+ (id)getSumAbilityModelcompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle;
//游戏百科列表
+ (id)getToolMenuBaseModelcompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle;
//装备分类
+ (id)getZBCategoryBaseModelcompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle;
//某分类装备列表
+ (id)getZBItemListBaseModelcompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle;
//最佳阵容
+ (id)getHeroGroupModelcompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle;

@end
















