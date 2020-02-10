//
//  AppDelegate.swift
//  Example
//
//  Created by Cain Luo on 2020/2/10.
//  Copyright © 2020 Cain Luo. All rights reserved.
//

import UIKit
import CLExtensions

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        UIViewController.doBadSwizzleStuff()
        UIView.doBadSwizzleStuff()
        
        return true
    }
}

