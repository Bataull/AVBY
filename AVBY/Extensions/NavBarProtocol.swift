import UIKit

protocol NavBarProtocol {
   
}
//MARK: - Navigation Controller

extension UIViewController {
    func configureNavigationBarUI(title: String, leftImageName: String? = nil, rightImageName: String? = nil, searchVcSymbolsConfig: Bool? = false, announcesVcSymbolsConfig: Bool? = false) {
        let navigationBar = UINavigationBar()
        view.addSubview(navigationBar)
        
// Constraints
        
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        navigationBar.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        navigationBar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        navigationBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor , constant: -10).isActive = true

// Settings
        
        navigationBar.isTranslucent = false
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "tabBarBg")
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        navigationBar.compactAppearance = appearance

        let navigationItem = UINavigationItem(title: title)
        
// Left Button Setted
        
        if let leftImageName = leftImageName {
            
        var leftButton = UIBarButtonItem(image: UIImage(systemName: leftImageName), style: .plain, target: self, action: #selector(leftButtonTapped))
            
        if searchVcSymbolsConfig ?? false {
            leftButton.imageInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
            let configuration = UIImage.SymbolConfiguration(weight: .bold)
            let leftButtonImage = UIImage(systemName: leftImageName)?.withConfiguration(configuration)
            leftButton = UIBarButtonItem(image: leftButtonImage, style: .plain, target: self, action: #selector(leftButtonTapped))
            }
            navigationItem.leftBarButtonItem = leftButton
        }
// Right Button Setted
        
        if let rightImageName = rightImageName {
            var rightButton: UIBarButtonItem
            
        if searchVcSymbolsConfig ?? false {
                rightButton = UIBarButtonItem(image: UIImage(systemName: rightImageName)?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .bold)), style: .plain, target: self, action: #selector(rightButtonTapped))
            } else if announcesVcSymbolsConfig ?? false {
            rightButton = UIBarButtonItem(image: UIImage(systemName: rightImageName)?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 23, weight: .medium)), style: .plain, target: self, action: #selector(rightButtonTapped))
                    } else {
                        rightButton = UIBarButtonItem(image: UIImage(systemName: rightImageName), style: .plain, target: self, action: #selector(rightButtonTapped))
                    }
            
            navigationItem.rightBarButtonItem = rightButton
        }

        navigationBar.setItems([navigationItem], animated: false)
    }

    // Button Actions
    
    @objc func leftButtonTapped() {
    }

    @objc func rightButtonTapped() {
    }
}
