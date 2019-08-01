import FrameworkA
import FrameworkB
import Router

public class RouterMapping: RouterDelegate {

    public static let shared  = RouterMapping()

    private init() {
        Router.shared.delegate = self
    }

    // MARK: - RouterDelegate
    public func viewControllerFrom(routerPath: RouterPath) -> UIViewController {
        switch routerPath {
        case .vca:
            return VCfromFrameworkA()
        case .vcb:
            return VCfromFrameworkB()
        }
    }

}
