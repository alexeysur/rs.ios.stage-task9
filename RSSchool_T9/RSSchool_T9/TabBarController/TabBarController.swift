//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
         view.backgroundColor = .white
        
       let collectionVC = CollectionVC()
        let settingsVC = SettingsVC()
 
        
        self.setViewControllers([
            UINavigationController(rootViewController: collectionVC),
            UINavigationController(rootViewController: settingsVC)], animated: false)
        
        collectionVC.navigationController?.isNavigationBarHidden = true;
    
        let label = UILabel()
        label.backgroundColor = .clear
        label.text = "Settings";
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 17)
        label.textAlignment = .center
        label.textColor = .black
        label.sizeToFit()
        collectionVC.navigationController?.navigationItem.titleView = label;
       
        collectionVC.title = "Home"
        settingsVC.title = "Settings"
        
        settingsVC.navigationController?.title = "Settings"
        
        guard let items = self.tabBar.items else { return }
        
        let images = ["square.grid.2x2", "gear"]
        
        for i in 0..<2 {
            items[i].image = UIImage(systemName: images[i])
        }
        
        self.tabBar.tintColor = .red
        self.tabBar.unselectedItemTintColor = .gray
        self.tabBar.barTintColor = .white
    }
 }



