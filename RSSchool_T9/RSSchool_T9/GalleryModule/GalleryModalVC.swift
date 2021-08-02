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

    var cellId = "TableViewCell"
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
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont(name: "Rockwell-Regular", size: 24)
        return label
    }()
    
    lazy var borderLine: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont(name: "Rockwell-Regular", size: 24)
        return label
    }()
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Properties
    var titles: [String] = ["One", "Two", "Three"]

  private func setupUI() {
        overrideUserInterfaceStyle = .light
        self.view.addSubview(tableView)
        self.view.addSubview(closeButton)
        
        NSLayoutConstraint.activate([
            tableView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            tableView.heightAnchor.constraint(equalTo: self.view.heightAnchor)
        ])
    
    NSLayoutConstraint.activate([
        closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant:  50),
        closeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25)
    ])
  }

    @objc func dismissVC() {
        dismiss(animated: true, completion: nil)
    }

}

extension GalleryModalVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! GalleryTableViewCell
        cell.titleLabel.text = titles[indexPath.row]
        return cell
    }
    
}


