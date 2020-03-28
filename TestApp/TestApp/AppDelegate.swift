//
//  AppDelegate.swift
//  TestApp
//
//  Created by Anilkumar on 27/03/20.
//  Copyright © 2020 AIT. All rights reserved.
//

import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        MSAppCenter.start("ccd04fe9-7588-4645-bb85-bd97fd84f4ba", withServices:[
          MSAnalytics.self,
          MSCrashes.self
        ])
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = UINavigationController(rootViewController: HomeVC())
        self.window?.makeKeyAndVisible()
        return true
    }
}

