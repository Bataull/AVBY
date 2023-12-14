import UIKit

//MARK: - Tab bar + Nav controller

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        
// Tab Bar
        
        let tabBarController = UITabBarController()
        
        let searchViewController = SearchViewController()
        let favouritesViewController = FavouritesViewController()
        let announcesViewContoller = AnnouncesViewController()
        let dialogsViewController = DialogsViewController()
        let moreViewContoller = MoreViewController()
        
        tabBarController.viewControllers = [searchViewController,favouritesViewController,announcesViewContoller,dialogsViewController,moreViewContoller]
        
        tabBarController.tabBar.backgroundColor = UIColor(named: "tabBarBg")
        tabBarController.tabBar.tintColor = UIColor(named: "iconsColor")
        
// Nav Bar
        
        let navigationController = UINavigationController(rootViewController: tabBarController)

        navigationController.navigationBar.backgroundColor = UIColor(named: "tabBarBg")
        navigationController.navigationBar.prefersLargeTitles = true

        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
    }
}

