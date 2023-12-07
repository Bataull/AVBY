import UIKit

class DialogsViewController: UIViewController, TabBarConfigurable {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarUI(title: "Диалоги", imageName: "dialogsTabLogo", imageSize: CGSize(width: 25, height: 25))
    }
}
