//
//  SearchedAppCell.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 13.04.2023.
//

import UIKit

class SearchedAppCell: UICollectionViewCell {
    // MARK: - Properties
    private var appPhoto: UIImageView = {
        let imageView = UIImageView()
        imageView.customMode()
        // width : 66, height : 66
        // width : width * 0.176, height : height * 0,0812
        imageView.backgroundColor = .cyan
        imageView.layer.cornerRadius = 12
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 66),
            imageView.heightAnchor.constraint(equalToConstant: 66)
        ])
        return imageView
    }()
    private var appName: UILabel = {
        let label = UILabel()
        label.text = "Twitter"
        return label
    }()
    private var appCategory: UILabel = {
        let label = UILabel()
        label.text = "Social"
        return label
    }()
    private var appDownloadCount: UILabel = {
        let label = UILabel()
        label.text = "1.9Mn"
        return label
    }()
    private lazy var downloadButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("GET", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.backgroundColor = UIColor(white: 0.9, alpha: 1)
        button.layer.cornerRadius = 16
        button.titleLabel?.font = .boldSystemFont(ofSize: 16)
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 75),
            button.heightAnchor.constraint(equalToConstant: 25)
        ])
        return button
    }()
    private var headerStackView: UIStackView!
    private var labelStackView: UIStackView!
  
    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: .zero)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Helpers
extension SearchedAppCell {
    private func style() {
        labelStackView = UIStackView(arrangedSubviews: [
            appName,appCategory,appDownloadCount
        ])
        labelStackView.axis = .vertical
        labelStackView.spacing = 12
        labelStackView.distribution = .fillEqually
        
        headerStackView = UIStackView(arrangedSubviews: [
            appPhoto,labelStackView,downloadButton
        ])
        headerStackView.alignment = .center
        headerStackView.axis = .horizontal
        headerStackView.spacing = 12
        headerStackView.translatesAutoresizingMaskIntoConstraints = false
    }
    private func layout() {
        addSubview(headerStackView)
        NSLayoutConstraint.activate([
            headerStackView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            headerStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            headerStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            headerStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
