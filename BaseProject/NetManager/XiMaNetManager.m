//
//  XiMaNetManager.m
//  BigProject
//
//  Created by ios-52 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "XiMaNetManager.h"

@implementation XiMaNetManager

//音乐分类列表
+ (id)getRankingModelWithPageIndex:(NSInteger)pageIndex completeHandle:(void(^)(RankingModel *model, NSError *error))completeHandle{
    NSString *path = @"http://mobile.ximalaya.com/mobile/discovery/v1/rankingList/album";
    NSDictionary *dict = @{@"device":@"iPhone", @"key":@"ranking:album:played:1:2", @"pageId":@(pageIndex), @"pageSize":@20, @"position":@0, @"title":@"排行榜"};
    //path = [self percentPathWithPath:path params:dict];
    return [self GET:path parameters:dict completionHandler:^(id responseObj, NSError *error) {
        completeHandle([RankingModel objectWithKeyValues:responseObj], error);
    }];
    
}
//某音乐分类内容
+ (id)getAlbumModelWithPageIndex:(NSInteger)pageIndex completeHandle:(void(^)(AlbumModel *model, NSError *error))completeHandle{
    NSString *path = [NSString stringWithFormat:@"http://mobile.ximalaya.com/mobile/others/ca/album/track/3092772/true/%ld/20?device=iPhone", pageIndex];
    
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completeHandle([AlbumModel objectWithKeyValues:responseObj], error);
    }];
}

@end
