import FrameworkA
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
            print("🤡👉\(str)👈🤡")
        }
    }
}
