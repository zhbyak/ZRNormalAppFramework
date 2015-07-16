//
//  AppDelegate.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/14.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "AppDelegate.h"
#import "ZRTabBarController.h"
#import "ZRMoreFeaturesController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//- (BOOL)application:(UIApplication *)application
//    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//  // Override point for customization after application launch.
//    
//    [application setStatusBarHidden:NO];
//    
//    [application setStatusBarStyle:UIStatusBarStyleLightContent];
//    
//
//  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//
//  ZRTabBarController *tabBarController = [[ZRTabBarController alloc] init];
//
//  self.window.rootViewController = tabBarController;
//
//  [self.window makeKeyAndVisible];
//
//  return YES;
//}


- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [application setStatusBarHidden:NO];
    
    [application setStatusBarStyle:UIStatusBarStyleLightContent];
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    ZRMoreFeaturesController *vc = [[ZRMoreFeaturesController alloc]init];
    
    self.window.rootViewController = vc;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)navControllerWithName:(NSString *)sbName {

  UIStoryboard *sb = [UIStoryboard storyboardWithName:sbName bundle:nil];

  UINavigationController *navController = [sb instantiateInitialViewController];

  NSString *picName = [NSString stringWithFormat:@"TabBar_%@_new", sbName];

  NSString *selName =
      [NSString stringWithFormat:@"TabBar_%@_selected_new", sbName];

  navController.tabBarItem.image = [[UIImage imageNamed:picName]
      imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

  navController.tabBarItem.selectedImage = [[UIImage imageNamed:selName]
      imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

- (void)applicationWillResignActive:(UIApplication *)application {
  // Sent when the application is about to move from active to inactive state.
  // This can occur for certain types of temporary interruptions (such as an
  // incoming phone call or SMS message) or when the user quits the application
  // and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down
  // OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
  // Use this method to release shared resources, save user data, invalidate
  // timers, and store enough application state information to restore your
  // application to its current state in case it is terminated later.
  // If your application supports background execution, this method is called
  // instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
  // Called as part of the transition from the background to the inactive state;
  // here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
  // Restart any tasks that were paused (or not yet started) while the
  // application was inactive. If the application was previously in the
  // background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
  // Called when the application is about to terminate. Save data if
  // appropriate. See also applicationDidEnterBackground:.
}

@end
