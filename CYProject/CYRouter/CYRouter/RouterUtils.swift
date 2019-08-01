//
//  Router.swift
//  Pods
//
//  Created by duzhe on 2017/8/3.
//
//

import UIKit

public class RouterUtils {
  //获取当前页面
  public class func currentTopViewController() -> UIViewController? {
    if let rootViewController = UIApplication.shared.keyWindow?.rootViewController{
      return currentTopViewController(rootViewController: rootViewController)
    }else{
      return nil
    }
  }
  
  public class func currentTopViewController(rootViewController: UIViewController) -> UIViewController {
    if (rootViewController.isKind(of: UITabBarController.self)) {
      let tabBarController = rootViewController as! UITabBarController
      return currentTopViewController(rootViewController: tabBarController.selectedViewController!)
    }
    if (rootViewController.isKind(of: UINavigationController.self)) {
      let navigationController = rootViewController as! UINavigationController
      return currentTopViewController(rootViewController: navigationController.visibleViewController!)
    }
    if ((rootViewController.presentedViewController) != nil) {
      return currentTopViewController(rootViewController: rootViewController.presentedViewController!)
    }
    return rootViewController
  }
}
