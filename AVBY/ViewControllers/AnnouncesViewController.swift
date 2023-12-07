import UIKit

class AnnouncesViewController: UIViewController, TabBarConfigurable {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarUI(title: "Объявления", imageName: "announcesBarLogo", imageSize: CGSize(width: 30, height: 25))
    }
}
