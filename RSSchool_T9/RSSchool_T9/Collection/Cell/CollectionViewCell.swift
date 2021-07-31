//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 8, y: 10, width: 163, height: 200))
        imageView.backgroundColor = UIColor.gray
        imageView.image = UIImage(named: "")
        imageView.layer.cornerRadius = 10
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let namePhoto: UILabel = {
       let label = UILabel(frame: CGRect(x: 10, y: 151, width: 138, height: 19))
        label.textColor = UIColor.red
        label.font = UIFont.init(name: "Rockwell", size: 16)
        label.textAlignment = .left
        label.text = "text"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    let typeCell: UILabel = {
       let label = UILabel(frame: CGRect(x: 10, y: 173, width: 138, height: 14))
        label.textColor = UIColor.red
        label.font = UIFont.init(name: "Rockwell", size: 12)
        label.text = "Story"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 18
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addViews() {
        backgroundColor = UIColor.black
        addSubview(imageView)
        addSubview(namePhoto)
        addSubview(typeCell)
        
        imageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        imageView.rightAnchor.constraint(equalTo: rightAnchor, constant: 8).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10).isActive = true
        
        namePhoto.leftAnchor.constraint(equalTo: imageView.leftAnchor, constant: 10).isActive = true
        namePhoto.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 151).isActive = true
        namePhoto.rightAnchor.constraint(equalTo: imageView.rightAnchor, constant: 15).isActive = true
        namePhoto.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30).isActive = true
        

        typeCell.leftAnchor.constraint(equalTo: imageView.leftAnchor, constant: 10).isActive = true
        typeCell.topAnchor.constraint(equalTo: namePhoto.topAnchor, constant: 3).isActive = true
        typeCell.rightAnchor.constraint(equalTo: imageView.rightAnchor, constant: 15).isActive = true
        typeCell.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 13).isActive = true

    }
    
}
