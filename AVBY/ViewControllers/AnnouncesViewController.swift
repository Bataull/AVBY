import UIKit

class AnnouncesViewController: UIViewController, TabBarConfigurable,NavBarProtocol {
    
    private let backgroundViewHelper = UIView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarUI(title: "Объявления", imageName: "announcesBarLogo", imageSize: CGSize(width: 30, height: 25))
        addSubviews()
        configureConstraints()
        configureUI()
        configureNavigationBarUI(title: "Мои объявления", rightImageName: "plus.circle.fill",announcesVcSymbolsConfig: true)
    }
    
    private func addSubviews(){
        view.addSubview(backgroundViewHelper)
    }
    
    private func configureConstraints(){
        
        backgroundViewHelper.translatesAutoresizingMaskIntoConstraints = false
        backgroundViewHelper.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundViewHelper.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundViewHelper.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundViewHelper.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    }
    
    private func configureUI() {
        backgroundViewHelper.backgroundColor = UIColor(named: "tabBarBg")
    }
    
    @objc func addButtonTapped(){
        print("addButton tapped")
    }
}
