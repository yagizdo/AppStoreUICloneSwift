//
//  SearchedAppCell.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 13.04.2023.
//

import UIKit

class SearchedAppCell: UICollectionViewCell {
    // MARK: - Properties
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
        backgroundColor = .brown
    }
    private func layout() {}
}
