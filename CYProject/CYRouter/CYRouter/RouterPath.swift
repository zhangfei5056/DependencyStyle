import UIKit

public protocol RouterMapDelegate: class {
    func viewControllerFrom(routerPath: RouterPath) -> UIViewController
}

public enum RouterPath {
    case vca
    case vcb
}

public class Router {
    public static let shared = Router()
    private init() {}

    public weak var delegate: RouterMapDelegate?

    public func getVCFrom(routerPath: RouterPath) -> UIViewController {
        if let vc = delegate?.viewControllerFrom(routerPath: routerPath) {
            return vc
        } else {
            assertionFailure("you do not have the fuxk vc")
            return UIViewController()
        }
    }
}
