//
//  AppCellDetailController.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 26.04.2023.
//

import UIKit

private let reuseIdentifier = "AppCellDetailCell"

class AppCellDetailController: UICollectionViewController {

    // MARK: Properties    
    // MARK: Lifecycle
    init() {
      let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        super.init(collectionViewLayout: flowLayout)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Helpers
extension AppCellDetailController {
    private func style() {
        collectionView.register(AppCellDetailCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    private func layout() {
        
    }
}

// MARK: UICollectionViewDataSource

extension AppCellDetailController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! AppCellDetailCell
        // Configure the cell
        return cell
    }
}

// MARK: UICollectionViewDelegateFlowLayout
extension AppCellDetailController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 30, height: (view.frame.height) / 3 - 3)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
}


