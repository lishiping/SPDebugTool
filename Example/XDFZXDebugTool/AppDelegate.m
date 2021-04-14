//
//  AppDelegate.m
//  XDFZXDebugTool
//
//  Created by lishiping on 2021/1/7.
//

#import "AppDelegate.h"

#import <LLDebug.h>
#import <LLWindowManager.h>
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationLandscapeRight];//此方法

    //代码创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController=[ViewController new];
    [self.window makeKeyAndVisible];
    [self loadLLDebugTool];
    return YES;
}

-(void)loadLLDebugTool
{
    //lsp加入超级调试工具
    [LLConfig shared].entryWindowStyle = LLConfigEntryWindowStyleTitle;//默认浮窗样式条
    [LLConfig shared].shrinkToEdgeWhenInactive =NO;//不活跃不收缩
        [LLConfig shared].pingIPAddress =@"10.155.19.154";//测试延迟地址
    [LLConfig shared].hideWhenInstall = YES;
    [LLConfig shared].doubleClickAction = LLDebugToolActionSandbox;//双击弹出文件模块
        [LLConfig shared].shakeToHide = YES;//摇动显示调试工具关闭
    [[LLDebugTool sharedTool] startWorking];
    [[LLWindowManager shared] showEntryWindow];
}

//- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(nullable UIWindow *)window {
//    return UIInterfaceOrientationMaskLandscape;
//}

#pragma mark - UISceneSession lifecycle

//
//- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
//    // Called when a new scene session is being created.
//    // Use this method to select a configuration to create the new scene with.
//    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
//}
//
//
//- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
//    // Called when the user discards a scene session.
//    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//}


@end
