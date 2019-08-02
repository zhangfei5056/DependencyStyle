import UIKit

public protocol DependencyProtocol: class {

}

public protocol RouterMapDelegate: class {
    func viewControllerFrom(routeType: RouterType, denpendency: DependencyProtocol?) -> UIViewController
}

public enum RouterType {
    case vca
    case vcb
}

public class Router {
    public static let shared = Router()
    private init() {}

    public weak var delegate: RouterMapDelegate?

    public func getVCFrom(routerPath: RouterType, denpendency: DependencyProtocol?) -> UIViewController {
        if let vc = delegate?.viewControllerFrom(routeType: routerPath, denpendency: denpendency) {
            return vc
        } else {
            assertionFailure("you do not have the fuxk vc")
            return UIViewController()
        }
    }

    public func jumpTo(vc: UIViewController, present: Bool = false, animated: Bool = true , presentComplete: (()->Void)? = nil) {
        vc.hidesBottomBarWhenPushed = true
        let topViewController = RouterUtils.currentTopViewController()
        if topViewController?.navigationController != nil && !present {
            topViewController?.navigationController?.pushViewController(vc, animated: animated)
        }else{
            topViewController?.present(vc, animated: animated , completion: presentComplete)
        }
    }
}
