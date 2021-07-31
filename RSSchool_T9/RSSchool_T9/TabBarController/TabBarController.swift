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
         view.backgroundColor = .brown
        
       let collectionVC = CollectionVC()
       let settingsVC = SettingsVC()
        
   //    let galleryVC = GalleryModalVC()
   //    let storyVC = StoryModalVC()
        
        self.setViewControllers([collectionVC, settingsVC], animated: false)
        
       //set title
        collectionVC.title = "Home"
        
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




class SettingsVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}



