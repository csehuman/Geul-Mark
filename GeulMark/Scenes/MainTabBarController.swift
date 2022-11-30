//
//  MainTabBarController.swift
//  GeulMark
//
//  Created by Paul Lee on 2022/11/29.
//

import UIKit

class MainTabBarController: UITabBarController {
    private lazy var blogListViewController: UIViewController = {
        let viewController = BlogListViewController()

        let tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house.fill"), tag: 0)
        viewController.tabBarItem = tabBarItem

        return viewController
    }()

    private lazy var bookmarkListViewController: UIViewController = {
       let viewController = BookmarkListViewController()

        let tabBarItem = UITabBarItem(title: "글마크", image: UIImage(systemName: "heart.circle"), tag: 1)
        viewController.tabBarItem = tabBarItem

        return viewController
    }()

    private lazy var settingViewController: UIViewController = {
       let viewController = SettingViewController()

        let tabBarItem = UITabBarItem(title: "설정", image: UIImage(systemName: "gearshape.fill"), tag: 2)
        viewController.tabBarItem = tabBarItem

        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [blogListViewController, bookmarkListViewController, settingViewController]
        tabBar.tintColor = .systemIndigo
    }
}
