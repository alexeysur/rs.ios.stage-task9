//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 01.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class XButton: UIButton {
    
    private lazy var closeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "xmark")
        imageView.tintColor = .white
        imageView.isUserInteractionEnabled = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        
        translatesAutoresizingMaskIntoConstraints = false
        layer.borderWidth = 1
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 20
        
        self.addSubview(closeImageView)
        
        NSLayoutConstraint.activate([
            
            self.heightAnchor.constraint(equalToConstant: 40),
            self.widthAnchor.constraint(equalToConstant: 40),
            
            closeImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            closeImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            closeImageView.heightAnchor.constraint(equalToConstant: 21),
            closeImageView.widthAnchor.constraint(equalToConstant: 19)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
