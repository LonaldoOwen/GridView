//
//  AppDelegate.swift
//  GridView
//
//  Created by libowen on 2018/1/31.
//  Copyright © 2018年 libowen. All rights reserved.
//
/// 功能：验证在Playground中使用framework
/// 步骤：
/// 1、新建Single View App，将项目Save As Workspace，然后打开workspace；
///     File-->Save As Workspace

/// 2、创建新的Framework（Cocoa Touch Framework.）
///     File > New > Target > Cocoa Touch Framework.

/// 3、添加file到Target（将用到的file添加到创建的framew中）

/// 4、Build framework（使用前先build，若果file修改了，需要重新build）
///     顶部项目运行位置，选择framewor > Simulator, Build

/// 5、添加Playground
///     In the workspace, File > New > Playground > Single View.(此时的Playground并未加入到workspace)
///     拖拽Playground到workspace；

/// 6、使用时，注意framew中的file都要使用public修饰，否则Playground无法获取
///
///
///










import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

