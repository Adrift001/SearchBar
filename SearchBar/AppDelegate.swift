//
//  AppDelegate.swift
//  SearchBar
//
//  Created by Adrift on 16/7/22.
//  Copyright © 2016年 kuaixiaohulian. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.rootViewController = UINavigationController(rootViewController: TableViewController())
        window?.makeKeyAndVisible()
        return true
    }
}

