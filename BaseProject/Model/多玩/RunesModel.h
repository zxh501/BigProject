//
//  RunesModel.h
//  BaseProject
//
//  Created by ios-52 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class Purple,Yellow,Blue,Red;
@interface RunesModel : BaseModel

@property (nonatomic, strong) NSArray<Purple *> *Purple;

@property (nonatomic, strong) NSArray<Blue *> *Blue;

@property (nonatomic, strong) NSArray<Yellow *> *Yellow;

@property (nonatomic, strong) NSArray<Red *> *Red;

@end
@interface Purple : NSObject

@property (nonatomic, copy) NSString *Img;

@property (nonatomic, copy) NSString *Name;

@property (nonatomic, copy) NSString *lev3;

@property (nonatomic, assign) NSInteger Recom;

@property (nonatomic, copy) NSString *lev2;

@property (nonatomic, assign) NSInteger iplev3;

@property (nonatomic, copy) NSString *Units;

@property (nonatomic, assign) NSInteger Type;

@property (nonatomic, copy) NSString *Standby;

@property (nonatomic, copy) NSString *lev1;

@property (nonatomic, assign) NSInteger iplev2;

@property (nonatomic, copy) NSString *Alias;

@property (nonatomic, copy) NSString *Prop;

@property (nonatomic, assign) NSInteger iplev1;

@end

@interface Yellow : NSObject

@property (nonatomic, copy) NSString *Img;

@property (nonatomic, copy) NSString *Name;

@property (nonatomic, copy) NSString *lev3;

@property (nonatomic, copy) NSString *Recom;

@property (nonatomic, copy) NSString *lev2;

@property (nonatomic, assign) NSInteger iplev3;

@property (nonatomic, copy) NSString *Units;

@property (nonatomic, assign) NSInteger Type;

@property (nonatomic, copy) NSString *Standby;

@property (nonatomic, copy) NSString *lev1;

@property (nonatomic, copy) NSString *iplev2;

@property (nonatomic, copy) NSString *Alias;

@property (nonatomic, copy) NSString *Prop;

@property (nonatomic, copy) NSString *iplev1;

@end

@interface Blue : NSObject

@property (nonatomic, copy) NSString *Img;

@property (nonatomic, copy) NSString *Name;

@property (nonatomic, copy) NSString *lev3;

@property (nonatomic, copy) NSString *Recom;

@property (nonatomic, copy) NSString *lev2;

@property (nonatomic, assign) NSInteger iplev3;

@property (nonatomic, copy) NSString *Units;

@property (nonatomic, assign) NSInteger Type;

@property (nonatomic, copy) NSString *Standby;

@property (nonatomic, copy) NSString *lev1;

@property (nonatomic, copy) NSString *iplev2;

@property (nonatomic, copy) NSString *Alias;

@property (nonatomic, copy) NSString *Prop;

@property (nonatomic, copy) NSString *iplev1;

@end

@interface Red : NSObject

@property (nonatomic, copy) NSString *Img;

@property (nonatomic, copy) NSString *Name;

@property (nonatomic, copy) NSString *lev3;

@property (nonatomic, assign) NSInteger Recom;

@property (nonatomic, copy) NSString *lev2;

@property (nonatomic, assign) NSInteger iplev3;

@property (nonatomic, copy) NSString *Units;

@property (nonatomic, assign) NSInteger Type;

@property (nonatomic, copy) NSString *Standby;

@property (nonatomic, copy) NSString *lev1;

@property (nonatomic, copy) NSString *iplev2;

@property (nonatomic, copy) NSString *Alias;

@property (nonatomic, copy) NSString *Prop;

@property (nonatomic, copy) NSString *iplev1;

@end

