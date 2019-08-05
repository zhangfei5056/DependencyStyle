import UIKit

open class VCfromFrameworkA: UIViewController {

    var dependency: VCADependecyProtocol!
    public var click: ((String)->Void)?

    public init(dependency: VCADependecyProtocol = VCADependencyImpMock()) {
        super.init(nibName: nil, bundle: nil)
        self.dependency = dependency
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    open override func viewDidLoad() {
        self.view.backgroundColor = dependency.colorDependency.getBgColor()
        setupButton()
    }

    @objc func tapButton() {
        print("this is VCA")
        guard click != nil else {
            click = dependency.viewCallbackDependency.clickActionBlock()
            click!("this is VCA")
            return
        }
        click!("this is VCA")
    }
}

private extension VCfromFrameworkA {
    func setupButton() {
        let button = UIButton()
        button.setTitle("VCA", for: .normal)
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
}
