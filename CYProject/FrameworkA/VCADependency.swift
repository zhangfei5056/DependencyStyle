public class MockVCfromFrameworkADependecy: VCADependecyProtocol {
    public init() {}
    public var colorDependency: ColorDependencyProtocol = MockColorDependency()
    public var fontDependency: FontDependencyProtocol = MockFontDependency()
}

public class MockColorDependency: ColorDependencyProtocol {
    public func getBgColor() -> UIColor {
        return .blue
    }

    public func getColor() -> UIColor {
        return .red
    }
}

public class MockFontDependency: FontDependencyProtocol {
    public func getFont() -> UIFont {
        return UIFont.boldSystemFont(ofSize: 20)
    }
}
