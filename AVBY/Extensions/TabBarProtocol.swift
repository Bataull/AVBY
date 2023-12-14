import UIKit

//MARK: - TabBar Setted

protocol TabBarConfigurable {
    func configureTabBarUI(title: String, imageName: String, imageSize: CGSize)
}

extension TabBarConfigurable where Self: UIViewController {
    func configureTabBarUI(title: String, imageName: String, imageSize: CGSize) {
        if let image = UIImage(named: imageName) {
            let renderer = UIGraphicsImageRenderer(size: imageSize)
            let resizedImage = renderer.image { (context) in
                image.draw(in: CGRect(origin: .zero, size: imageSize))
            }

            tabBarItem = UITabBarItem(title: title, image: resizedImage.withRenderingMode(.alwaysTemplate), selectedImage: nil)
        }
    }
}
