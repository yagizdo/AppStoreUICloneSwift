//
//  AppsViewController.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 13.04.2023.
//

import UIKit

private let reuseIdentifier = "appsCell"
private let reuseHeaderIdentifier = "appsHeader"
class AppsViewController: UICollectionViewController {

    // MARK: - Properties
    var appsPresenterDelegate: ViewToPresenterAppsProtocol?
    var feeds: [Feed] = []{
        didSet{collectionView.reloadData()}
    }
    // MARK: - Lifecycle
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Create module
        AppsRouter.createModule(ref: self)
        
        // Fetch Apps
        appsPresenterDelegate?.fetchApps()
        
        // Helpers
        style()
        layout()
    }
}

// MARK: - Helpers
extension AppsViewController {
    private func style() {
        collectionView.register(AppCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.register(AppsHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: reuseHeaderIdentifier)
    }
    private func layout() {}
}

// MARK: - UICollectionViewController
extension AppsViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let appCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! AppCell
        return appCell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: reuseHeaderIdentifier, for: indexPath)
        return header
    }
}

extension AppsViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 250)
    }
}

// MARK: - Get Apps Data
extension AppsViewController: PresenterToViewAppsProtocol {
    func sendDataToView(fetchedApps: Feed) {
        print("Viper ile data alma metodu calisti")
        self.feeds.append(fetchedApps)
    }
    
    func showError(error: Error) {
        print("Custom Error:\(error.localizedDescription)")
    }
}
