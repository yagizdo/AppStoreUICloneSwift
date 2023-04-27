//
//  AppCell.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 17.04.2023.
//

import UIKit

class AppCell: UICollectionViewCell {
    // MARK: - Properties
    var sectionName: UILabel = {
       var label = UILabel()
        label.text = "Section Name"
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()
    
    private let appCellDetailController = AppCellDetailController()
    
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
        sectionName.translatesAutoresizingMaskIntoConstraints = false
        appCellDetailController.view.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func layout() {
        
        // Title and Collection View Section
        addSubview(sectionName)
        addSubview(appCellDetailController.view)
        NSLayoutConstraint.activate([
            
            // Title
            sectionName.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            sectionName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            sectionName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16),
            
            // Collection View
            appCellDetailController.view.topAnchor.constraint(equalTo: sectionName.bottomAnchor),
            appCellDetailController.view.leadingAnchor.constraint(equalTo: leadingAnchor),
            appCellDetailController.view.trailingAnchor.constraint(equalTo: trailingAnchor),
            appCellDetailController.view.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
