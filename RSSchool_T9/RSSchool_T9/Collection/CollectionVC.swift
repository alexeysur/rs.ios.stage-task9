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
//    let numberOfCellsPerRow: CGFloat = 2
    let contentData = FillingData.data
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 40, left: 0, bottom: 40, right: 0)
        
        myCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        myCollectionView?.register(CollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        myCollectionView?.showsVerticalScrollIndicator = false
        myCollectionView?.translatesAutoresizingMaskIntoConstraints = false
        myCollectionView?.backgroundColor = UIColor.white
        
        myCollectionView?.dataSource = self
        myCollectionView?.delegate = self
        
        view.addSubview(myCollectionView ?? UICollectionView())
   
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupConstraints()
    }

    func setupConstraints() {
        self.myCollectionView?.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.myCollectionView?.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        self.myCollectionView?.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        self.myCollectionView?.widthAnchor.constraint(equalToConstant: view.bounds.width - 40).isActive = true
    }
}

extension CollectionVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contentData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? CollectionViewCell else {
            return CollectionViewCell()
        }
        
        cell.setup(indexPath: indexPath.row)
        return cell
    }
}

extension CollectionVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("didSelectItemAt")
        let vc = StoryModalVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
       
    }
}


extension CollectionVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if UIDevice.current.orientation.isPortrait {
            return CGSize(width: self.view.frame.width * 0.43, height: (self.view.frame.width * 0.43) * 1.23)
        }else {
            return CGSize(width: self.view.frame.height * 0.43, height: (self.view.frame.height * 0.43) * 1.23)
        }
    
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if UIDevice.current.orientation.isPortrait {
            return self.view.bounds.height * 0.034
        }else {
            return self.view.bounds.width * 0.034
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if UIDevice.current.orientation.isPortrait {
            return self.view.bounds.width * 0.033
        }else {
            return self.view.bounds.height * 0.033
        }
    }
    
}
