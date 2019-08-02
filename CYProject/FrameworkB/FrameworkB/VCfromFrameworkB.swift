import UIKit
import Router

open class VCfromFrameworkB: UIViewController {

    var dependency: VCBDependecyProtocol!
    public var click: ((String)->Void)?

    public init(dependency: VCBDependecyProtocol = VCBDependecyImpMock()) {
        super.init(nibName: nil, bundle: nil)
        self.dependency = dependency
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    open override func viewDidLoad() {
        self.view.backgroundColor = dependency.colorDependency.getBgColor()
        let button = UIButton()
        button.setTitle("VCB", for: .normal)
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
        print("this is VCB")
        click?("this is VCB")
    }
}
