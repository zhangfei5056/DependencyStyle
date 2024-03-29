import UIKit
import RouterMap

class AppRootViewController: UIViewController {

    open override func viewDidLoad() {
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
        let vc = RouterMapping.shared.viewControllerFrom(routeType: .vca, denpendency: VCADependency())
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
