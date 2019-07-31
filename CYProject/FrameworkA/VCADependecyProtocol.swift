public protocol ColorDependencyProtocol {
    func getColor() -> UIColor
    func getBgColor() -> UIColor
}

public protocol FontDependencyProtocol {
    func getFont() -> UIFont
}

public protocol VCADependecyProtocol {
    var colorDependency: ColorDependencyProtocol { get }
    var fontDependency: FontDependencyProtocol { get }
}

