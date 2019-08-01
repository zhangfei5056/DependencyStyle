//
//  AppDelegate.swift
//  VCCFortTest
//
//  Created by Yuan Cao on 2019/7/29.
//  Copyright © 2019 Yuan Cao. All rights reserved.
//

import UIKit
import Router

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let vc = UINavigationController(rootViewController: AppRootViewController())
        self.window = UIWindow()
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
        return true
    }

}

import FrameworkA
import FrameworkB

class RouterMapping: RouterDelegate {

    public static let shared  = RouterMapping()

    private init() {
        Router.shared.delegate = self
    }

    // MARK: - RouterDelegate
    func getVC(routerPath: RouterPath) -> UIViewController {
        switch routerPath {
        case .vca:
            return VCfromFrameworkA()
        case .vcb:
            return VCfromFrameworkB()
        }
    }

}
