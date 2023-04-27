//
//  AppsHeaderView.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 27.04.2023.
//

import UIKit

class AppsHeaderView: UICollectionReusableView {
        // MARK: - Properties
    private let appsHeaderViewController = AppsHeaderViewController()
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
extension AppsHeaderView {
    private func style() {
        appsHeaderViewController.view.translatesAutoresizingMaskIntoConstraints = false
    }
    private func layout() {
        addSubview(appsHeaderViewController.view)
        NSLayoutConstraint.activate([
            appsHeaderViewController.view.topAnchor.constraint(equalTo: topAnchor),
            appsHeaderViewController.view.bottomAnchor.constraint(equalTo: bottomAnchor),
            appsHeaderViewController.view.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 4),
            appsHeaderViewController.view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 4)
        ])
    }
}
