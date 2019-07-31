
import UIKit

open class VCfromFrameworkA: UIViewController {

    var dependency: VCADependecyProtocol!
    public var click: (()->Void)?

    open override func viewDidLoad() {
        self.view.backgroundColor = dependency.colorDependency.getBgColor()
        let button = UIButton()
        button.setTitle("hello world", for: .normal)
        button.setTitleColor(dependency.colorDependency.getColor(), for: .normal)
        button.titleLabel?.font = dependency.fontDependency.getFont()
        button.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(button)
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            button.heightAnchor.constraint(equalToConstant: 40),
        ])

        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    }

    @objc func tapButton() {
        print("你点击了此按钮")
        click?()
    }
}
