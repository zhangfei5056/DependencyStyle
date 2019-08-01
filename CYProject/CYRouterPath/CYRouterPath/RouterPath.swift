//
//  File.swift
//  CYRouterPath
//
//  Created by Yuan Cao on 2019/7/31.
//  Copyright © 2019 Yuan Cao. All rights reserved.
//

import Foundation

public protocol RouterPathable {
    func getVC() -> UIViewController
}

extension RouterPathable {
    public func getVC() -> UIViewController {
        print("🤡👉\("you should imp RouterPathable \(#file)")👈🤡")
        return UIViewController()
    }
}



public typealias  RouterParameter = [String: Any]

public protocol Routable {
    static func initWithParams(params: RouterParameter?) -> UIViewController
}

public class RouterPath: RouterPathable {
    public var vcName: String
    public init(vcName: String) {
        self.vcName = vcName
    }
//    public func getVC() -> UIViewController {
//        return UIViewController()
//    }
}



extension UIViewController: Routable {
    public static func initWithParams(params: RouterParameter?) -> UIViewController {
        return UIViewController()
    }
}
