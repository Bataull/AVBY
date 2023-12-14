import UIKit

class MoreViewController: UIViewController,TabBarConfigurable {
    
    private let backgroundViewHelper = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarUI(title: "Прочее", imageName: "moreTabLogo", imageSize: CGSize(width: 27, height: 18))
        addSubviews()
        configureConstraints()
        configureUI()
        configureNavigationBarUI(title: "Прочее")
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
}
