//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.
import UIKit

class GalleryModalVC: UIViewController {
    var galleryData: Gallery? = nil
    var cellId = "TableViewCell"
    var titles: [String] = ["One", "Two", "Three"]
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    lazy var closeButton: XButton = {
        let button = XButton()
        button.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        return button
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(GalleryTableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.tableFooterView = UIView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
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
        label.text = "Gallery"
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
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    private func setupScroolView() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
        scrollView.topAnchor.constraint(equalTo: view.topAnchor),
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
    }
    
    private func setupViews() {
        contentView.addSubview(closeButton)
        contentView.addSubview(imageView)
        imageView.addSubview(namePhoto)
        contentView.addSubview(storyView)
        storyView.addSubview(storyLabel)
        contentView.addSubview(borderLine)
        
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
        
    }
    
    
    @objc func dismissVC() {
        dismiss(animated: true, completion: nil)
    }
    
}

extension GalleryModalVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return galleryData?.images.count ?? 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! GalleryTableViewCell
        
        cell.imageView?.image = galleryData?.images[indexPath.row]
        return cell
    }
    
}


