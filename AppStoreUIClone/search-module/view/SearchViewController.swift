//
//  SearchViewController.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 13.04.2023.
//

import UIKit
private let reuseIdentifier = "searchCell"
class SearchViewController: UICollectionViewController {

    // MARK: - Properties
    var searchPresenterDelegate: ViewToPresenterSearchProtocol?
    var searchedApps: [Result] = [] {
        didSet { collectionView.reloadData() }
    }
    
    // MARK: - Lifecycle
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        
        // Create Search Module
        SearchRouter.createRef(ref: self)
        
        // Default Search
        searchPresenterDelegate?.searchApp(searchText: "Social")
    }
}

// MARK: - Helpers
extension SearchViewController {
    private func style() {
        collectionView.register(SearchedAppCell.self, forCellWithReuseIdentifier: reuseIdentifier )
        collectionView.backgroundColor = .systemBackground
        view.backgroundColor = .systemBackground
        // Searchbar
        let searchController = UISearchController(searchResultsController: nil)
        self.navigationItem.searchController = searchController
        self.navigationItem.hidesSearchBarWhenScrolling = false
        searchController.searchBar.delegate = self
    }
    private func layout() {}
}

// MARK: - UICollectionViewDataSource
extension SearchViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchedApps.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? SearchedAppCell else {
            return UICollectionViewCell()
        }
        
        cell.searchedApp = searchedApps[indexPath.row]
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension SearchViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 250 = view.frame.height * 0.3
        return .init(width: view.frame.width, height: view.frame.height * 0.38)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: 0, height: 10)
    }
}

// MARK: - UISearchBarDelegate
extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // TODO: Add debouncer
        if !searchText.isEmpty {
            searchPresenterDelegate?.searchApp(searchText: searchText)
        }

    }
}


// MARK: - PresenterToViewSearchProtocol
extension SearchViewController : PresenterToViewSearchProtocol {
    func sendDataToView(searchedApps: [Result]) {
        self.searchedApps = searchedApps
    }
    
    func showError(error: Error) {
        print(error.localizedDescription)
    }
}

