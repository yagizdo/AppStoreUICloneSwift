//
//  AppCell.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 17.04.2023.
//

import UIKit

class AppCell: UICollectionViewCell {
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
extension AppCell {
    private func style() {
        backgroundColor = .yellow
    }
    
    private func layout() {
        
    }
}
