//
//  BaseTabBarController.swift
//  sampleAppStore
//
//  Created by Takuma Osada on 2019/05/04.
//  Copyright © 2019 Takuma Osada. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [
            createNavController(
                viewController: AppsSearchController(),
                title: "Search",
                imageName: "search"
            ),
            createNavController(
                viewController: UIViewController(),
                title: "Today",
                imageName: "today_icon"
            ),
            createNavController(
                viewController: UIViewController(),
                title: "Apps",
                imageName: "apps"
            )
        ]
    }
    
    private func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        
        viewController.view.backgroundColor = .white
        viewController.navigationItem.title = title
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        navController.navigationBar.prefersLargeTitles = true
        return navController
    }
}