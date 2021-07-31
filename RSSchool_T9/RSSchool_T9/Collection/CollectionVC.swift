//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class CollectionVC: UIViewController {
    var myCollectionView: UICollectionView?
    var cellId = "MyCell"
    let numberOfCellsPerRow: CGFloat = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let view = UIView()
//        view.backgroundColor = .white
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 40, left: 20, bottom: 40, right: 20)
        layout.itemSize = CGSize(width: 180, height: 220)
        layout.minimumLineSpacing = 30
        layout.minimumInteritemSpacing = 16
        
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        
        myCollectionView?.register(CollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        myCollectionView?.showsVerticalScrollIndicator = false
        myCollectionView?.backgroundColor = UIColor.white
        
        myCollectionView?.dataSource = self
        myCollectionView?.delegate = self
        
        view.addSubview(myCollectionView ?? UICollectionView())
   //     self.view = view
    }
}

extension CollectionVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
//        cell.layer.cornerRadius = 18
//        cell.layer.borderWidth = 1
//        cell.layer.borderColor = UIColor.black.cgColor
        
        return cell
    }
}

extension CollectionVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("didSelectItemAt")
    }
}


extension CollectionVC: UICollectionViewDelegateFlowLayout {
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        guard let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout else {
//            return CGSize(width: 180, height: 220)
//        }
//
//        let offset = flowLayout.sectionInset.right + flowLayout.sectionInset.left + (flowLayout.minimumInteritemSpacing * (numberOfCellsPerRow - 1))
//        let width = (collectionView.bounds.width - offset) / numberOfCellsPerRow
//
//        return CGSize(width: width, height: width)
//
//    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 16
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 16
//    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return CGSize(width: collectionView.bounds.width, height: 40)
//    }
}
