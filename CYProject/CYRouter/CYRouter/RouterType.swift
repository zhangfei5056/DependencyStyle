import UIKit

public protocol RouterMapDelegate: class {
    func viewControllerFrom(routeType: RouterType) -> UIViewController
}

public enum RouterType {
    case vca
    case vcb
}

public class Router {
    public static let shared = Router()
    private init() {}

    public weak var delegate: RouterMapDelegate?

    public func getVCFrom(routerPath: RouterType) -> UIViewController {
        if let vc = delegate?.viewControllerFrom(routeType: routerPath) {
            return vc
        } else {
            assertionFailure("you do not have the fuxk vc")
            return UIViewController()
        }
    }
}
