//
//  TuWanNetManager.h
//  BaseProject
//
//  Created by ios-52 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "TuWanBaseModel.h"



typedef NS_ENUM(NSUInteger, TuWanNetType) {
    TuWanNetTypeTouTiao, //头条
    TuWanNetTypeDuJia,   //独家
    TuWanNetTypeAnHei3,  //暗黑3
    TuWanNetTypeMoShou,  //魔兽
    TuWanNetTypeFengBao, //风暴
    TuWanNetTypeLuShi,   //炉石
    TuWanNetTypeXingJi2, //星际2
    TuWanNetTypeShouWang,//守望
    TuWanNetTypeTuPian,  //图片
    TuWanNetTypeShiPin,  //视频
    TuWanNetTypeGongLue, //攻略
    TuWanNetTypeHuanHua, //幻化
    TuWanNetTypeQiWen,   //奇闻
    TuWanNetTypeCOS,     //COS
    TuWanNetTypeMeiNv    //美女
};


@interface TuWanNetManager : BaseNetManager

+ (id)getTuWanModelWithPageIndex:(NSInteger)pageIndex tuWanType:(TuWanNetType)type completeHandle:(void(^)(TuWanBaseModel *model, NSError *error))completeHandle;



@end







