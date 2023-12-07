import UIKit

class SearchViewController: UIViewController ,TabBarConfigurable{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarUI(title: "Поиск", imageName: "avLogo", imageSize: CGSize(width: 25, height: 25))
    }
}
