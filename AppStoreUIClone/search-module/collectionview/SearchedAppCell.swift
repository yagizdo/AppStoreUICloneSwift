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
    
    // Screenshot Views
    private var screenshotView1: UIImageView = {
        let imageView = UIImageView()
        imageView.customMode()
        // width : 66, height : 66
        // width : width * 0.176, height : height * 0,0812
        imageView.backgroundColor = .red
        imageView.layer.cornerRadius = 6
        return imageView
    }()
    private var screenshotView2: UIImageView = {
        let imageView = UIImageView()
        imageView.customMode()
        // width : 66, height : 66
        // width : width * 0.176, height : height * 0,0812
        imageView.backgroundColor = .red
        imageView.layer.cornerRadius = 6
        return imageView
    }()
    private var screenshotView3: UIImageView = {
        let imageView = UIImageView()
        imageView.customMode()
        // width : 66, height : 66
        // width : width * 0.176, height : height * 0,0812
        imageView.backgroundColor = .red
        imageView.layer.cornerRadius = 6
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
        ])
        return button
    }()
    
    // Stackviews
    private var headerStackView: UIStackView!
    private var labelStackView: UIStackView!
    private var screenshotsStackView: UIStackView!
    private var searchedAppStackView: UIStackView!
    
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
        labelStackView.distribution = .fillEqually
        
        headerStackView = UIStackView(arrangedSubviews: [
            appPhoto,labelStackView,downloadButton
        ])
        headerStackView.alignment = .center
        headerStackView.axis = .horizontal
        headerStackView.spacing = 12
        headerStackView.translatesAutoresizingMaskIntoConstraints = false
        
        screenshotsStackView = UIStackView(arrangedSubviews: [
            screenshotView1,screenshotView2,screenshotView3
        ])
        screenshotsStackView.axis = .horizontal
        screenshotsStackView.spacing = 8
        screenshotsStackView.distribution = .fillEqually
        
        searchedAppStackView = UIStackView(arrangedSubviews: [
            headerStackView, screenshotsStackView
        ])
        
        searchedAppStackView.translatesAutoresizingMaskIntoConstraints = false
        searchedAppStackView.axis = .vertical
        searchedAppStackView.spacing = 12
    }
    private func layout() {
        addSubview(searchedAppStackView)
        NSLayoutConstraint.activate([
            searchedAppStackView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            searchedAppStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            searchedAppStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            searchedAppStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
