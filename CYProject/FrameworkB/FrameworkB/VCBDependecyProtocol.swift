import Foundation
public protocol ColorDependencyProtocol {
    func getColor() -> UIColor
    func getBgColor() -> UIColor
}

public protocol FontDependencyProtocol {
    func getFont() -> UIFont
}

public protocol VCBDependecyProtocol: class {
    var colorDependency: ColorDependencyProtocol { get }
    var fontDependency: FontDependencyProtocol { get }
}
