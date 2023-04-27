//
//  AppsHeaderViewCell.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 27.04.2023.
//

import UIKit

class AppsHeaderViewCell: UICollectionViewCell {
    // MARK: - Properties
    private let appImage : UIImageView = {
        let imageView = UIImageView()
        imageView.customMode()
        imageView.backgroundColor = .cyan
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "NOW AVAILABLE"
        label.textColor = .blue
        label.font = .systemFont(ofSize: 10, weight: .regular)
        return label
    }()
    
    private let firmLabel: UILabel = {
        let label = UILabel()
        label.text = "Linkedin"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .regular)
        return label
    }()
    
    private let descLabel: UILabel = {
        let label = UILabel()
        label.text = "Watch the new comedy movie"
        label.textColor = UIColor(white: 0.6, alpha: 1)
        label.font = .systemFont(ofSize: 16, weight: .regular)
        return label
    }()
    
    private var titleSubTitleStackView : UIStackView!
    private var stackView : UIStackView!
    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Helpers
extension AppsHeaderViewCell {
    private func style() {
        // TitleSubtitle StackView
        titleSubTitleStackView = UIStackView(arrangedSubviews: [titleLabel,firmLabel,descLabel])
        titleSubTitleStackView.axis = .vertical
        titleSubTitleStackView.spacing = 2
        titleSubTitleStackView.translatesAutoresizingMaskIntoConstraints = false
        
        // All StackView
        stackView = UIStackView(arrangedSubviews: [titleSubTitleStackView,appImage])
        stackView.axis = .vertical
        stackView.spacing = 6
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    private func layout() {
        addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor,constant: 8),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
