//
//  AppsHeaderViewController.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 27.04.2023.
//

import UIKit

private let reuseIdentifier = "appsHeaderCell"

class AppsHeaderViewController: UICollectionViewController {
    
    // MARK: - Properties
    // MARK: - Lifecycle
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

// MARK: - Helpers

extension AppsHeaderViewController {
    private func style() {
        collectionView.register(AppsHeaderViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.isPagingEnabled = true
    }
    private func layout() {}
}

// MARK: UICollectionViewDataSource
extension AppsHeaderViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! AppsHeaderViewCell
        // Configure the cell
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension AppsHeaderViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 24, height: view.frame.height)
    }
}
