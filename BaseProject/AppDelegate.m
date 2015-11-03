//
//  AppDelegate.m
//  BaseProject
//
//  Created by jiyingxin on 15/10/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+Category.h"
#import "TuWanNetManager.h"
#import "DuoWanNetManager.h"
#import "XiMaNetManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [XiMaNetManager getAlbumModelWithPageIndex:1 completeHandle:^(AlbumModel *model, NSError *error) {
        NSLog(@"");
    }];
    
    [self initializeWithApplication:application];

    return YES;
}

@end
