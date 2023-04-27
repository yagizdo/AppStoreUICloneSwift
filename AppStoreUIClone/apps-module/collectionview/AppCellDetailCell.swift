//
//  AppCellDetailCell.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 26.04.2023.
//

import UIKit

class AppCellDetailCell: UICollectionViewCell {
    // MARK: Properties
    let appIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.customMode()
        imageView.backgroundColor = .purple
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "App Name"
        return label
    }()
    
    let firmLabel: UILabel = {
        let label = UILabel()
        label.text = "Firm Name"
        return label
    }()
    
    private lazy var getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Get", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.backgroundColor = UIColor(white: 0.88, alpha: 1)
        return button
    }()
    
    var labelStackView: UIStackView!
    var fullStackView: UIStackView!
    
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Helpers
extension AppCellDetailCell {
    private func style() {
        backgroundColor = .cyan
        labelStackView = UIStackView(arrangedSubviews: [nameLabel,firmLabel])
        labelStackView.axis = .vertical
        
        fullStackView = UIStackView(arrangedSubviews: [appIcon,labelStackView,getButton])
        fullStackView.axis = .horizontal
        fullStackView.alignment = .center
        fullStackView.translatesAutoresizingMaskIntoConstraints = false
        getButton.translatesAutoresizingMaskIntoConstraints = false
        appIcon.translatesAutoresizingMaskIntoConstraints = false
        
        getButton.layer.cornerRadius = 34 / 2
        appIcon.layer.cornerRadius = 10
    }
    private func layout() {
        addSubview(fullStackView)
        NSLayoutConstraint.activate([
            appIcon.widthAnchor.constraint(equalToConstant: 80),
            appIcon.heightAnchor.constraint(equalToConstant: 65),
            getButton.widthAnchor.constraint(equalToConstant: 80),
            getButton.heightAnchor.constraint(equalToConstant: 34),
            fullStackView.topAnchor.constraint(equalTo: topAnchor),
            fullStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            fullStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            fullStackView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
