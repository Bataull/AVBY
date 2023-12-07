import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        
        let tabBarController = UITabBarController()
        
        let searchViewController = SearchViewController()
        let favouritesViewController = FavouritesViewController()
        let announcesViewContoller = AnnouncesViewController()
        let dialogsViewController = DialogsViewController()
        let moreViewContoller = MoreViewController()
        
        tabBarController.viewControllers = [searchViewController,favouritesViewController,announcesViewContoller,dialogsViewController,moreViewContoller]
        
        tabBarController.tabBar.backgroundColor = UIColor(named: "tabBarBg")
        tabBarController.tabBar.tintColor = UIColor.systemBlue
        
        let navigationController = UINavigationController(rootViewController: tabBarController)
        window.rootViewController = navigationController
        
        window.makeKeyAndVisible()
    }
}

