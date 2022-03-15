//
//  ProfileCollectionViewCell.swift
//  SnapKitTest
//
//  Created by Renat Murtazin on 10.03.2022.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
