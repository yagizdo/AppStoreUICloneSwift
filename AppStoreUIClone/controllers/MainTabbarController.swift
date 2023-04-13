//
//  MainTabbarController.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 13.04.2023.
//

import UIKit

class MainTabbarController: UITabBarController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

// MARK: - Helpers
extension MainTabbarController {
    private func setup() {
        viewControllers = [
            createViewController(rootVC: TodayViewController(), title: "Today", iconName: "doc.text.image"),
            createViewController(rootVC: AppsViewController(), title: "Apps", iconName: "square.stack.3d.up.fill"),
            createViewController(rootVC: SearchViewController(), title: "Search", iconName: "magnifyingglass"),
        ]
    }
    private func createViewController(rootVC : UIViewController, title : String, iconName : String) -> UIViewController {
        rootVC.title = title
        let appearance = UINavigationBarAppearance()
        let controller = UINavigationController(rootViewController: rootVC)
        controller.navigationBar.prefersLargeTitles = true
        controller.tabBarItem.title = title
        controller.tabBarItem.image = UIImage(systemName: iconName)
        // Appearances
        controller.navigationBar.standardAppearance = appearance
        controller.navigationBar.scrollEdgeAppearance = appearance
        controller.navigationBar.compactAppearance = appearance
        controller.navigationBar.compactScrollEdgeAppearance = appearance
        
        return controller
    }
}
