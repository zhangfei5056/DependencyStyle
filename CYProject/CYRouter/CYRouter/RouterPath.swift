//
//  RouterPath.swift
//  CYRouter
//
//  Created by Yuan Cao on 2019/8/1.
//  Copyright © 2019 Yuan Cao. All rights reserved.
//
import UIKit

public enum RouterPath {
    case vca
    case vcb
}

public protocol RouterDelegate: class {
    func getVC(routerPath: RouterPath) -> UIViewController
}

public class Router {
    public static let shared = Router()
    private init() {}

    public weak var delegate: RouterDelegate?

    public func getMeTheFuxkVC(routerPath: RouterPath) -> UIViewController {
        if let vc = delegate?.getVC(routerPath: routerPath) {
            return vc
        } else {
            assertionFailure("you do not have the fuxk vc")
            return UIViewController()
        }
    }
}
