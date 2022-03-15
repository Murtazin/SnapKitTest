//
//  ProfileViewController.swift
//  SnapKitTest
//
//  Created by Renat Murtazin on 09.03.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    var profileView = ProfileView()
    
    fileprivate let data = [
        CustomData(shopTitle: "ASOS", clothTitle: "Sneakers", sizes: ["42","43","44"], oldPrice: "3000", newPrice: "1700", clothImage: #imageLiteral(resourceName: "image3")),
        CustomData(shopTitle: "Stockx", clothTitle: "Sneakers", sizes: ["37","38","39"], oldPrice: "12900", newPrice: "3434", clothImage: #imageLiteral(resourceName: "image2")),
        CustomData(shopTitle: "Farfetch", clothTitle: "Sneakers", sizes: ["40"], oldPrice: "545542", newPrice: "21212", clothImage: #imageLiteral(resourceName: "image1")),
        CustomData(shopTitle: "Yoox", clothTitle: "Hoodie", sizes: ["M", "S"], oldPrice: "3333", newPrice: "1333", clothImage: #imageLiteral(resourceName: "image4")),
        CustomData(shopTitle: "ASOS", clothTitle: "Sneakers", sizes: ["42","43","44"], oldPrice: "3000", newPrice: "1700", clothImage: #imageLiteral(resourceName: "image3")),
        CustomData(shopTitle: "ASOS", clothTitle: "Sneakers", sizes: ["42","43","44"], oldPrice: "3000", newPrice: "1700", clothImage: #imageLiteral(resourceName: "image3")),
        CustomData(shopTitle: "Farfetch", clothTitle: "Sneakers", sizes: ["40"], oldPrice: "545542", newPrice: "21212", clothImage: #imageLiteral(resourceName: "image1")),
        CustomData(shopTitle: "Yoox", clothTitle: "Hoodie", sizes: ["M", "S"], oldPrice: "3333", newPrice: "1333", clothImage: #imageLiteral(resourceName: "image4")),
        CustomData(shopTitle: "ASOS", clothTitle: "Sneakers", sizes: ["42","43","44"], oldPrice: "3000", newPrice: "1700", clothImage: #imageLiteral(resourceName: "image3")),
        CustomData(shopTitle: "ASOS", clothTitle: "Sneakers", sizes: ["42","43","44"], oldPrice: "3000", newPrice: "1700", clothImage: #imageLiteral(resourceName: "image3"))
    ]
    
    override func loadView() {
        view = profileView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        profileView.profileCollectionView.delegate = self
        profileView.profileCollectionView.dataSource = self
        profileView.profileCollectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        profileView.profileCollectionView.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header")
    }
}

extension ProfileViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height/3.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 15, bottom: 70, right: 15)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 70
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width/2.3, height: view.frame.width/1.85)
    }
}

extension ProfileViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = profileView.profileCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CustomCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.data = self.data[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = profileView.profileCollectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header", for: indexPath) as? HeaderCollectionReusableView else {
            return UICollectionReusableView()
        }
        return header
    }
}
