import FrameworkA
import FrameworkB
import Router

public class RouterMapping: RouterMapDelegate {

    public static let shared  = RouterMapping()

    private init() {
        Router.shared.delegate = self
    }

    // MARK: - RouterDelegate
    public func viewControllerFrom(routerPath: RouterPath) -> UIViewController {
        switch routerPath {
        case .vca:
            let vca = VCfromFrameworkA()
            return vca
        case .vcb:
            return VCfromFrameworkB()
        }
    }

}
