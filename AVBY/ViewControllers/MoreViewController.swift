import UIKit

class MoreViewController: UIViewController,TabBarConfigurable {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarUI(title: "Прочее", imageName: "moreTabLogo", imageSize: CGSize(width: 27, height: 18))
    }
}
