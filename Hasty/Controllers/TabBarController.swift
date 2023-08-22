//
//  TabBarController.swift
//  Hasty
//
//  Created by Nazar Kopeika on 21.08.2023.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpControllers()
        tabBar.barTintColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0) // Пример цвета
    }
    
    private func setUpControllers() {
        let activityVC = UINavigationController(rootViewController: ActivityViewController())
        let subscriptionVC = UINavigationController(rootViewController: SubscriptionViewController())
        let chatVC = UINavigationController(rootViewController: ChatViewController())
        let notificationsVC = UINavigationController(rootViewController: NotificationViewController())
        let profileVC = UINavigationController(rootViewController: ProfileViewController())
        
        activityVC.tabBarItem.image = UIImage(systemName: "calendar")
        subscriptionVC.tabBarItem.image = UIImage(systemName: "creditcard.fill")
        chatVC.tabBarItem.image = UIImage(systemName: "ellipsis.message.fill")
        notificationsVC.tabBarItem.image = UIImage(systemName: "bell.fill")
        profileVC.tabBarItem.image = UIImage(systemName: "person.fill")
        
        activityVC.navigationItem.largeTitleDisplayMode = .always
        activityVC.navigationBar.prefersLargeTitles = true
        
        subscriptionVC.navigationItem.largeTitleDisplayMode = .always
        subscriptionVC.navigationBar.prefersLargeTitles = true
        
        chatVC.navigationItem.largeTitleDisplayMode = .always
        chatVC.navigationBar.prefersLargeTitles = true
        
        notificationsVC.navigationItem.largeTitleDisplayMode = .always
        notificationsVC.navigationBar.prefersLargeTitles = true
        
        profileVC.navigationItem.largeTitleDisplayMode = .always
        profileVC.navigationBar.prefersLargeTitles = true
        
        activityVC.title = "Activity"
        subscriptionVC.title = "Subscription"
        chatVC.title = "Chat"
        notificationsVC.title = "Notifications"
        profileVC.title = "Profile"
        
        setViewControllers([activityVC, subscriptionVC, chatVC, notificationsVC, profileVC], animated: true)
    }
}


