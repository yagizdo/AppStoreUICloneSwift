//
//  AppsHeaderViewCell.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 27.04.2023.
//

import UIKit

class AppsHeaderViewCell: UICollectionViewCell {
    // MARK: - Properties
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
        backgroundColor = .red
    }
    private func layout() {}
}
