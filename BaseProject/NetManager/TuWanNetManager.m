//
//  TuWanNetManager.m
//  BaseProject
//
//  Created by ios-52 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TuWanNetManager.h"

#define kAppid @"appid=1"
#define kAppver @"appver=2.1"


@implementation TuWanNetManager




+ (id)getTuWanModelWithPageIndex:(NSInteger)pageIndex tuWanType:(TuWanNetType)type completeHandle:(void (^)(TuWanBaseModel *, NSError *))completeHandle{
    NSString *path = nil;
    switch (type) {
        case 0://头条
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&classmore=indexpic&%@&%@&start=%ld",kAppid, kAppver, pageIndex];
            break;
        case 1://独家
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?%@&class=heronews&mod=八卦&%@&%@&start=%ld",kAppid, kAppid, kAppver, pageIndex];
            break;
        case 2://暗黑3
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?%@&dtid=83623&classmore=indexpic&%@&%@&start=%ld",kAppid, kAppid, kAppver, pageIndex];
            break;
        case 3://魔兽
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?%@&dtid=31537&classmore=indexpic&%@&%@&start=%ld",kAppid, kAppid, kAppver, pageIndex];
            break;
        case 4://风暴
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?%@&dtid=31538&classmore=indexpic&%@&%@&start=%ld",kAppid, kAppid, kAppver, pageIndex];
            break;
        case 5://炉石
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?%@&dtid=31528&classmore=indexpic&%@&%@&start=%ld",kAppid, kAppid, kAppver, pageIndex];
            break;
        case 6://星际2
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?%@&dtid=91821&%@&%@&start=%ld",kAppid, kAppid, kAppver, pageIndex];
            break;
        case 7://守望
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?%@&dtid=57067&%@&%@&start=%ld",kAppid, kAppid, kAppver, pageIndex];
            break;
        case 8://图片
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?%@&type=pic&dtid=83623,31528,31537,31538,57067,91821&%@&%@&start=%ld",kAppid, kAppid, kAppver, pageIndex];
            break;
        case 9://视频
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?%@&type=video&dtid=83623,31528,31537,31538,57067,91821&%@&%@&start=%ld", kAppid, kAppid, kAppver, pageIndex];
            break;
        case 10://攻略
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?%@&type=guide&dtid=83623,31528,31537,31538,57067,91821&%@&%@&start=%ld", kAppid, kAppid, kAppver,  pageIndex];
            break;
        case 11://幻化
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?%@&class=heronews&mod=幻化&%@&%@&start=%ld", kAppid, kAppid, kAppver, pageIndex];
            break;
        case 12://趣闻
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?%@&dtid=0&class=heronews&mod=趣闻&classmore=indexpic&%@&%@&start=%ld",kAppid, kAppid, kAppver, pageIndex];
            break;
        case 13://COS
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?%@&class=cos&mod=cos&classmore=indexpic&dtid=0&%@&%@&start=%ld",kAppid, kAppid, kAppver, pageIndex];
            break;
        case 14://美女
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?%@&class=heronews&mod=美女&classmore=indexpic&typechild=cos1&%@&%@&start=%ld",kAppid, kAppid, kAppver, pageIndex];
            break;
    }
    path = [self percentPathWithPath:path params:nil];
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completeHandle([TuWanBaseModel objectWithKeyValues:responseObj], error);
    }];
}



@end












