public class VCADependencyImpMock: VCADependecyProtocol {

    public init() {}
    public var colorDependency: ColorDependencyProtocol = MockColorDependency()
    public var fontDependency: FontDependencyProtocol = MockFontDependency()
    public var viewCallbackDependency: ViewCallBackProtocol = MockViewCallBackDependency()

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

public class MockViewCallBackDependency: ViewCallBackProtocol {

    public func clickActionBlock() -> ((String) -> Void)? {
        return { str in
            print("this from callback:🤡👉\(str)👈🤡")
        }
    }

}
