import FrameworkA
import Router
class VCADependency: VCADependecyProtocol {

    public init() {}
    var colorDependency: ColorDependencyProtocol = ColorDependency()
    var fontDependency: FontDependencyProtocol = FontDependency()
    var viewCallbackDependency: ViewCallBackProtocol = ViewCallBackImp()
}

class ColorDependency: ColorDependencyProtocol {
    func getBgColor() -> UIColor {
        return .yellow
    }

    public func getColor() -> UIColor {
        return .purple
    }
}

class FontDependency: FontDependencyProtocol {
    public func getFont() -> UIFont {
        return UIFont.boldSystemFont(ofSize: 30)
    }
}

class ViewCallBackImp: ViewCallBackProtocol {
    func clickActionBlock() -> ((String) -> Void)? {
        return { str in
            print("this from real vcaIMP🤡👉\(str)👈🤡")
            let vc = Router.shared.getVCFrom(routerPath: .vcb, denpendency: nil)
            Router.shared.jumpTo(vc: vc)
        }
    }
}
