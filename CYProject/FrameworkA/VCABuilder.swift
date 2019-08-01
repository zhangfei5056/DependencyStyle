public class VCABuilder {
    public static func build(dependency: VCADependecyProtocol = MockVCfromFrameworkADependecy(), clickAction: (()->Void)?) -> UIViewController {
        let vc = VCfromFrameworkA()
        vc.dependency = dependency
        vc.click = clickAction
        return vc
    }
}
