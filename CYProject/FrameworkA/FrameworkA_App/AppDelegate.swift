//
//  AppDelegate.swift
//  FrameworkA_App
//
//  Created by Yuan Cao on 2019/7/29.
//  Copyright © 2019 Yuan Cao. All rights reserved.
//

import UIKit
import FrameworkA
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let vc = VCfromFrameworkA()
        self.window = UIWindow()
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()

        return true
    }

}

