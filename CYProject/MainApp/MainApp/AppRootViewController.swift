import UIKit
import RouterMap
class AppRootViewController: UIViewController {

    //    var dependency: VCADependecyProtocol!
    public var click: (()->Void)?

    open override func viewDidLoad() {
        //        self.view.backgroundColor = dependency.colorDependency.getBgColor()
        self.view.backgroundColor = UIColor.white
        let button = UIButton()
        button.setTitle("vcRoot", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
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
//      let vc = VCABuilder.build(dependency: VCfromFrameworkADependecy()) {
//          print("🤡👉\("hello world")👈🤡")
//      }

        let vc = RouterMapping.shared.viewControllerFrom(routerPath: .vca)
        self.navigationController?.pushViewController(vc, animated: true)

    }

}
