//
//  XiMaNetManager.h
//  BigProject
//
//  Created by ios-52 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "RankingModel.h"
#import "AlbumModel.h"

@interface XiMaNetManager : BaseNetManager

//音乐分类列表
+ (id)getRankingModelWithPageIndex:(NSInteger)pageIndex completeHandle:(void(^)(RankingModel *model, NSError *error))completeHandle;
//某音乐分类内容
+ (id)getAlbumModelWithPageIndex:(NSInteger)pageIndex completeHandle:(void(^)(AlbumModel *model, NSError *error))completeHandle;

@end
