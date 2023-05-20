//
//  TabController.swift
//  Combine+StoryboardSample
//
//  Created by Rin on 2023/05/20.
//

import UIKit

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.backgroundColor = .clear
        UITabBar.appearance().tintColor = .black
        UITabBar.appearance().backgroundColor = .systemGray5

        setViewControllers([
            setupMVPViewController(),
            setupMenuViewController()
        ], animated: false)
    }

    private func setupMVPViewController() -> UIViewController {
        let vc = MVPViewController()
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem = .init(title: "MVP", image: UIImage(systemName: "square.grid.2x2.fill"), tag: 0)
        nav.navigationItem.title = "MVP"
        return nav
    }

    private func setupMenuViewController() -> UIViewController {
        let vc = MVVMViewController()
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem = .init(title: "MVVM", image: UIImage(systemName: "square.grid.2x2"), tag: 1)
        nav.title = "MVVM"
        return nav
    }
}
