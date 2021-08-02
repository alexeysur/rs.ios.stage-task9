//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class StoryModalVC: UIViewController {

    let scrollView = UIScrollView()
    let contentView = UIView()
    var cellId = "TableViewCell"
 //   var viewPicture = UICollectionView()
    
   
    lazy var closeButton: XButton = {
        let button = XButton()
        button.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        return button
    }()

    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.cornerRadius = 8
        imageView.layer.masksToBounds = true
        
        return imageView
    }()
    
    lazy var namePhoto: UILabel = {
        let label = PaddingLabel(withInsets: 0, 0, 0, 5)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont(name: "Rockwell-Regular", size: 48)
        label.numberOfLines = 0
        label.text = "Man's best friend"
        label.sizeToFit()
        
        return label
    }()
    
    lazy var storyView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 8
        return view
    }()
    
    lazy var storyLabel: UILabel = {
        let label = PaddingLabel(withInsets: 10, 8, 30, 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont(name: "Rockwell-Regular", size: 24)
        label.text = "Story"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.sizeToFit()
        
        return label
    }()
    
    lazy var borderLine: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
        
        return view
    }()
    
    lazy var collectionConteiner: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
        
        return view
    }()
    
    
    lazy var textLabel: UILabel = {
        let label = PaddingLabel(withInsets: 30, 30, 30, 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont(name: "Rockwell-Regular", size: 24)
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.white.cgColor
        label.numberOfLines = 0
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et tempus lacus. Quisque varius libero at est vulputate luctus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse dignissim erat ex, ut auctor ipsum tristique sed. Donec nec porta turpis, at bibendum ante. Maecenas condimentum dui nec sodales maximus. Praesent congue, erat a sodales volutpat, metus eros lobortis mauris, nec malesuada ex arcu id felis."
        
        
        return label
    }()
    
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScroolView()
        setupViews()
    }
 
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        scrollView.isScrollEnabled = true
        scrollView.contentSize = CGSize(width: view.bounds.width, height: contentView.frame.height)
        print("Scrollview.height = \(textLabel.frame.origin.x + textLabel.frame.height)")
        print("Content size = \(contentView.frame.height)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    private func setupScroolView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
              contentView.translatesAutoresizingMaskIntoConstraints = false
              
              view.addSubview(scrollView)
              scrollView.addSubview(contentView)
              
              scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
              scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
              scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
              scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
              
              contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
              contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
              contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
              contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
     }
    
    private func setupViews() {
        contentView.addSubview(closeButton)
        contentView.addSubview(imageView)
         imageView.addSubview(namePhoto)
        contentView.addSubview(storyView)
          storyView.addSubview(storyLabel)
        contentView.addSubview(borderLine)
        contentView.addSubview(collectionConteiner)
        
        contentView.addSubview(textLabel)
        
        NSLayoutConstraint.activate([
                closeButton.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: view.frame.width - 65),
                closeButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant:  30),
                
                imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
                imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 100),
                imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                imageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.9),
                
                imageView.heightAnchor.constraint(equalToConstant: 500)
                
            ])
        
                NSLayoutConstraint.activate([
                    namePhoto.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
                    namePhoto.leftAnchor.constraint(equalTo: imageView.leftAnchor, constant: 30),
        
                    namePhoto.widthAnchor.constraint(equalTo: imageView.widthAnchor, constant: imageView.bounds.width - 60),
                    namePhoto.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -55)
                ])
         
        NSLayoutConstraint.activate([
              storyView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
              storyView.leftAnchor.constraint(equalTo: imageView.leftAnchor, constant: 126),
              storyView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -20),
              storyView.heightAnchor.constraint(equalToConstant: 40)
          ])
        
        NSLayoutConstraint.activate([
               borderLine.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
               borderLine.topAnchor.constraint(equalTo: storyView.bottomAnchor, constant: 39),
               borderLine.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
               borderLine.heightAnchor.constraint(equalToConstant: 2)
           ])

        NSLayoutConstraint.activate([
              collectionConteiner.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
              collectionConteiner.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
              collectionConteiner.topAnchor.constraint(equalTo: borderLine.bottomAnchor, constant: 40),
             collectionConteiner.widthAnchor.constraint(equalToConstant: 495),
              collectionConteiner.heightAnchor.constraint(equalToConstant: 100)
          ])
        
        NSLayoutConstraint.activate([
              textLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
              textLabel.topAnchor.constraint(equalTo: collectionConteiner.bottomAnchor, constant: 40),
              textLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
              textLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, constant: scrollView.bounds.width - 40),
              textLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
              
          ])
        
  }

    @objc func dismissVC() {
        dismiss(animated: true, completion: nil)
    }

}


