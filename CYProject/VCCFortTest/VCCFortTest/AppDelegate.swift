//
//  AppDelegate.swift
//  VCCFortTest
//
//  Created by Yuan Cao on 2019/7/29.
//  Copyright © 2019 Yuan Cao. All rights reserved.
//

import UIKit
import FrameworkA
//import FrameworkB

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

//        let vc = VCABuilder.build(dependency: VCfromFrameworkADependecy()) {
//            print("🤡👉\("hello world")👈🤡")
//        }

        let vc = VCABuilder.build {
            print("🤡👉\("hello world")👈🤡")
        }
        self.window = UIWindow()
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
        return true
    }

}

class VCfromFrameworkADependecy: VCADependecyProtocol {
    public init() {}
    public var colorDependency: ColorDependencyProtocol = ColorDependency()
    public var fontDependency: FontDependencyProtocol = FontDependency()
}

class ColorDependency: ColorDependencyProtocol {
    func getBgColor() -> UIColor {
        return .yellow
    }

    public func getColor() -> UIColor {
        return .purple
    }
}

class FontDependency: FontDependencyProtocol {
    public func getFont() -> UIFont {
        return UIFont.boldSystemFont(ofSize: 30)
    }
}
