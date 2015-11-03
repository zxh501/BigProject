//
//  DuoWanNetManager.m
//  BaseProject
//
//  Created by ios-52 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "DuoWanNetManager.h"


#define kFreeHeroModel                 @{@"type":@"free", @"v":@"140", @"OSType":@"iOS9.1"}

#define kAllHeroesModel                @{@"type":@"all", @"v":@"140", @"OSType":@"iOS9.1"}

#define kGiftModel                     @{@"v":@"140", @"OSType":@"iOS9.1"}

#define kHeroInfoModel(heroName)       @{@"OSType":@"iOS9.1",@"heroName":[NSString stringWithFormat:@"%@", (heroName)], @"v":@"140"}

#define kHeroChuZhuangModel(heroName)  @{@"v":@"140", @"OSType":@"iOS9.1", @"championName":[NSString stringWithFormat:@"%@", (heroName)], @"limit":@"7"}

#define kHeroGiftAndRunBaseModel(heroName) @{@"hero":[NSString stringWithFormat:@"%@", (heroName)], @"v":@"140", @"OSType":@"iOS9.1"}

#define kHeroNewInfoBaseModel(heroName) @{@"name":[NSString stringWithFormat:@"%@", (heroName)], @"v":@"140", @"OSType":@"iOS9.1"}

#define kHeroSkin(heroName)   @{@"hero":[NSString stringWithFormat:@"%@", (heroName)], @"v":@"140", @"OSType":@"iOS9.1", @"versionName":@"2.4.0"}

#define kHeroVideoBaseModel(heroName,pageIndex)  @{@"action":@"l",@"p":@(pageIndex),@"v":@"140",@"OSType":@"iOS9.1",@"tag":[NSString stringWithFormat:@"%@", (heroName)],@"src":@"letv"}

#define kItemDetailModel(itemId)  @{@"id":@(itemId), @"v":@"140", @"OSType":@"iOS9.1"}

@implementation DuoWanNetManager
//免费英雄
+ (id)getFreeHeroesModelCompleteHandle:(void(^)(FreeHeroesModel *model, NSError *error))comleteHandle{
    NSString *path = @"http://lolbox.duowan.com/phone/apiHeroes.php";
    return [self GET:path parameters:kFreeHeroModel completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([FreeHeroesModel objectWithKeyValues:responseObj], error);
    }];
    
}
//全部英雄
+ (id)getAllHeroesModelCompleteHandle:(void(^)(AllHeroesModel *model, NSError *error))comleteHandle{
    NSString *path = @"http://lolbox.duowan.com/phone/apiHeroes.php";
    return [self GET:path parameters:kAllHeroesModel completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([AllHeroesModel objectWithKeyValues:responseObj], error);
    }];
}
//天赋
+ (id)getGiftModelCompleteHandle:(void(^)(GiftModel *model, NSError *error))comleteHandle{
    NSString *path = @"http://lolbox.duowan.com/phone/apiGift.php";
    return [self GET:path parameters:kGiftModel completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([GiftModel objectWithKeyValues:responseObj], error);
    }];
}
//英雄资料
+ (id)getHeroDetailModelllWithHeroName:(NSString *)heroName CompleteHandle:(void(^)(HeroDetailModel *model, NSError *error))comleteHandle{
    NSString *path = @"http://lolbox.duowan.com/phone/apiHeroDetail.php";
    return [self GET:path parameters:kHeroInfoModel(heroName) completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([HeroDetailModel objectWithKeyValues:responseObj], error);
    }];
}
//英雄出装
+ (id)getHeroChuZhuangModelWithHeroName:(NSString *)heroName CompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle{
    NSString *path = @"http://db.duowan.com/lolcz/img/ku11/api/lolcz.php";
    return [self GET:path parameters:kHeroChuZhuangModel(heroName) completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([HeroChuZhuangModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
//英雄天赋符文
+ (id)getHeroGiftAndRunBaseModelWithHeroName:(NSString *)heroName CompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle{
    NSString *path = @"http://box.dwstatic.com/apiHeroSuggestedGiftAndRun.php";
    return [self GET:path parameters:kHeroGiftAndRunBaseModel(heroName) completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([HeroGiftAndRunBaseModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
//英雄改动
+ (id)getHeroNewInfoBaseModelWithHeroName:(NSString *)heroName CompleteHandle:(void(^)(HeroNewInfoBaseModel *model, NSError *error))comleteHandle{
    NSString *path = @"http://db.duowan.com/boxnews/heroinfo.php";
    return [self GET:path parameters:kHeroNewInfoBaseModel(heroName) completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([HeroNewInfoBaseModel objectWithKeyValues:responseObj], error);
    }];
}
//英雄皮肤
+ (id)getHeroSkinWithHeroName:(NSString *)heroName CompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle{
    NSString *path = @"http://box.dwstatic.com/apiHeroSkin.php";
    return [self GET:path parameters:kHeroSkin(heroName) completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([HeroSkin objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
//英雄视频
+ (id)getHeroVideoBaseModelWithHeroName:(NSString *)heroName pageIndex:(NSInteger)pageIndex CompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle{
    NSString *path = @"http://box.dwstatic.com/apiVideoesNormalDuowan.php";
    return [self GET:path parameters:kHeroVideoBaseModel(heroName, pageIndex) completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([HeroVideoBaseModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
//一周数据
+ (id)getHeroWeekDataModelWithHeroId:(NSInteger)heroId CompleteHandle:(void(^)(HeroWeekDataModel *model, NSError *error))comleteHandle{
    NSString *path = [NSString stringWithFormat:@"http://183.61.12.108/apiHeroWeekData.php?heroId=%ld", heroId];
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([HeroWeekDataModel objectWithKeyValues:responseObj], error);
    }];
}
//装备详情
+ (id)getItemDetailModelWithItemId:(NSInteger)itemId CompleteHandle:(void(^)(ItemDetailModel *model, NSError *error))comleteHandle{
    NSString *path = @"http://lolbox.duowan.com/phone/apiItemDetail.php";
    return [self GET:path parameters:kItemDetailModel(itemId) completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([ItemDetailModel objectWithKeyValues:responseObj], error);
    }];
}
//符文列表
+ (id)getRunesModelcompleteHandle:(void(^)(RunesModel *model, NSError *error))comleteHandle{
    NSString *path = @"http://lolbox.duowan.com/phone/apiRunes.php";
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([RunesModel objectWithKeyValues:responseObj], error);
    }];
}
//召唤师技能列表
+ (id)getSumAbilityModelcompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle{
    NSString *path = @"http://lolbox.duowan.com/phone/apiSumAbility.php?v=140&OSType=iOS9.1";
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([SumAbilityModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
//游戏百科列表
+ (id)getToolMenuBaseModelcompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle{
    NSString *path = @"http://box.dwstatic.com/apiToolMenu.php?category=database&v=140&OSType=iOS9.1&versionName=2.4.0";
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([ToolMenuBaseModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
//装备分类
+ (id)getZBCategoryBaseModelcompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle{
    NSString *path = @"http://lolbox.duowan.com/phone/apiZBCategory.php?v=140&OSType=iOS9.1&versionName=2.4.0";
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([ZBCategoryBaseModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
//某分类装备列表
+ (id)getZBItemListBaseModelcompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle{
    NSString *path = @"http://lolbox.duowan.com/phone/apiZBItemList.php?tag=consumable&v=140&OSType=iOS9.1&versionName=2.4.0";
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([ZBItemListBaseModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
//最佳阵容
+ (id)getHeroGroupModelcompleteHandle:(void(^)(NSArray *model, NSError *error))comleteHandle{
    NSString *path = @"http://box.dwstatic.com/apiHeroBestGroup.php?v=140&OSType=iOS9.1";
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        comleteHandle([HeroGroupModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}



@end






