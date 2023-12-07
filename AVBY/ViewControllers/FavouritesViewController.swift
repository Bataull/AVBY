import UIKit

class FavouritesViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarUI()
    }
    
    private func configureTabBarUI(){

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
