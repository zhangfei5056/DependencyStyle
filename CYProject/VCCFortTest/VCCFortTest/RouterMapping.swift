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
//            return VCfromFrameworkA()
            return VCABuilder.build(dependency: VCfromFrameworkADependecy(), clickAction: {
                print("🤡👉\(1231231)👈🤡")
            })
        case .vcb:
            return VCfromFrameworkB()
        }
    }

}
