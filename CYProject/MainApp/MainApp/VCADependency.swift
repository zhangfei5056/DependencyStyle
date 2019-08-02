import FrameworkA
class VCADependency: VCADependecyProtocol {
    public init() {}
    public var colorDependency: ColorDependencyProtocol = ColorDependency()
    public var fontDependency: FontDependencyProtocol = FontDependency()
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
