//
//  MainTabController.swift
//  twitter_clone_revelsios
//
//  Created by Ankit Mishra on 01/03/22.
//

import UIKit

class MainTabController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let feed=UINavigationController(rootViewController: FeedController())
        let explorer=UINavigationController(rootViewController: ExplorerController())
        let notification=UINavigationController(rootViewController: NotificationController())
        let conversation=UINavigationController(rootViewController: ConversationController())
        
        
        feed.tabBarItem.image = UIImage(systemName: "house")
        feed.tabBarItem.selectedImage=UIImage(systemName: "house.fill")
        
        explorer.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        notification.tabBarItem.image=UIImage(systemName: "bell")
        notification.tabBarItem.selectedImage=UIImage(systemName: "bell.fill")
        
        conversation.tabBarItem.image=UIImage(systemName: "envelop")
        conversation.tabBarItem.selectedImage=UIImage(systemName: "envelop.fill")
        
        setViewControllers(([feed,explorer,notification,conversation]), animated: true)
         
        
    }
    
    
    
    
    
}

