import FrameworkA
import FrameworkB
import Router

public class RouterMapping: RouterMapDelegate {

    public static let shared  = RouterMapping()

    private init() {
        Router.shared.delegate = self
    }

    // MARK: - RouterDelegate
    public func viewControllerFrom(routeType: RouterType, denpendency: DependencyProtocol?) -> UIViewController {
        switch routeType {
        case .vca:
            if let denpendency = denpendency as? VCADependecyProtocol {
                return VCfromFrameworkA(dependency: denpendency)
            } else {
                return VCfromFrameworkA()
            }
        case .vcb:
            if let denpendency = denpendency as? VCBDependecyProtocol {
                return VCfromFrameworkB(dependency: denpendency)
            } else {
                return VCfromFrameworkB()
            }
        }
    }

}
