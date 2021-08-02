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
    
    let content = FillingData.data
    var imageView = UIImageView()
    var namePhoto = UILabel()
    var typeCell = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 18
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        addViews()
      }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addViews() {
        backgroundColor = UIColor.white
   
        imageView = UIImageView(frame: CGRect(x: 8, y: 10, width: self.bounds.width - 8, height: self.bounds.height - 10))
//        imageView.backgroundColor = UIColor.gray
        imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 1
        imageView.layer.cornerRadius = 10
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        
        let gradientView = UIView(frame: imageView.bounds)
        let gradient = CAGradientLayer()
        gradient.frame = gradientView.frame
        gradient.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradient.locations = [0.7, 1.0]
        gradientView.layer.insertSublayer(gradient, at: 0)
        imageView.addSubview(gradientView)
        
        namePhoto = UILabel(frame: CGRect.zero)
        namePhoto.textColor = UIColor.white
        namePhoto.font = UIFont.init(name: "Rockwell", size: 16)
        namePhoto.textAlignment = .left
        namePhoto.numberOfLines = 1
        namePhoto.translatesAutoresizingMaskIntoConstraints = false
        
        typeCell = UILabel(frame: CGRect.zero)
        typeCell.textColor = UIColor.white
        typeCell.font = UIFont.init(name: "Rockwell", size: 12)
        typeCell.numberOfLines = 1
        typeCell.translatesAutoresizingMaskIntoConstraints = false
    
        
        addSubview(imageView)
        addSubview(namePhoto)
        addSubview(typeCell)
        
        NSLayoutConstraint.activate([
            imageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 8),
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            imageView.rightAnchor.constraint(equalTo: rightAnchor, constant: -8),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -13)
        ])
        
        NSLayoutConstraint.activate([
            namePhoto.topAnchor.constraint(equalTo: self.topAnchor, constant: self.frame.height * 0.74),
            namePhoto.leftAnchor.constraint(equalTo: self.leftAnchor, constant: self.frame.width * 0.1),
            namePhoto.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -(self.frame.width * 0.1)),
            namePhoto.heightAnchor.constraint(equalToConstant: (self.frame.height * 0.075) + 2)
        ])
        
        NSLayoutConstraint.activate([
            typeCell.topAnchor.constraint(equalTo: namePhoto.bottomAnchor, constant: self.frame.height * 0.012),
            typeCell.leftAnchor.constraint(equalTo: self.leftAnchor, constant: self.frame.width * 0.1),
            typeCell.rightAnchor.constraint(equalTo: self.rightAnchor),
            typeCell.heightAnchor.constraint(equalToConstant: (self.frame.height * 0.06) + 1)
        ])

       
    }
    
    func setup(indexPath: Int)  {
      
        
      
        let content = content[indexPath]
        
        switch content {
        case .gallery(let galery):
            imageView.image = galery.coverImage
            namePhoto.text = galery.title
            typeCell.text = galery.type
        case .story(let story):
            imageView.image = story.coverImage
            namePhoto.text = story.title
            typeCell.text = story.type
        }
    }
}
