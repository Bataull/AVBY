import UIKit

class DialogsViewController: UIViewController, TabBarConfigurable {
    
    private let backgroundViewHelper = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarUI(title: "Диалоги", imageName: "dialogsTabLogo", imageSize: CGSize(width: 25, height: 25))
        addSubviews()
        configureConstraints()
        configureUI()
        configureNavigationBarUI(title: "Диалоги", rightImageName: "archivebox.fill")
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
        
    }
}
