import FrameworkA
import FrameworkB
import Router

class RouterMapping: RouterDelegate {

    public static let shared  = RouterMapping()

    private init() {
        Router.shared.delegate = self
    }

    // MARK: - RouterDelegate
    func viewControllerFrom(routerPath: RouterPath) -> UIViewController {
        switch routerPath {
        case .vca:
            return VCfromFrameworkA()
        case .vcb:
            return VCfromFrameworkB()
        }
    }

}
