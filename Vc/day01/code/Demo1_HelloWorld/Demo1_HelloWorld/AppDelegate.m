//
//  AppDelegate.m
//  Demo1_HelloWorld
//
//  Created by tarena on 15/11/30.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

/* 当应用程序一起动，由系统自动调用该方法 */
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //1.创建界面显示的基础对象window
    self.window = [[UIWindow alloc]init];
    //2.设置界面window与设备主屏一样大
    self.window.frame = [[UIScreen mainScreen] bounds];
    //3.设置window的背景色为白色
    self.window.backgroundColor = [UIColor whiteColor];
    
    //4.创建管理界面的控制器
    UIViewController *vc = [[UIViewController alloc]init];
    
    //5.UILabel对象负责显示文本
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(60, 100, 200, 100)];
    label.text = @"Hello World";
    
    //6.将标签以子视图的形式添加到vc的视图中
    [vc.view  addSubview:label];
    
    //7.将vc设置为window的根视图控制器
    self.window.rootViewController = vc;
    
    //8.显示window
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
