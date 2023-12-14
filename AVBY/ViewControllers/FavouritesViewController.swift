import UIKit

class FavouritesViewController: UIViewController, NavBarProtocol {
    
    private let backgroundViewHelper = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarUICustom()
        addSubviews()
        configureConstraints()
        configureUI()
        configureNavigationBarUI(title: "Избранное")
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
    private func configureTabBarUICustom(){
        
        if let image = UIImage(systemName: "bookmark.fill") {
        let scaledSize = CGSize(width: 27, height: 25)
        let renderer = UIGraphicsImageRenderer(size: scaledSize)
                       
        let resizedImage = renderer.image { (context) in
                       image.draw(in: CGRect(origin: .zero, size: scaledSize))
        }
                       
        tabBarItem = UITabBarItem(title: "Избранное", image: resizedImage.withRenderingMode(.alwaysTemplate), selectedImage: nil)
        }
    }
}
