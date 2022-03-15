//
//  CustomCollectionViewCell.swift
//  SnapKitTest
//
//  Created by Renat Murtazin on 06.03.2022.
//

import UIKit
import SnapKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    var data: CustomData? {
        didSet {
            guard let data = data else {
                return
            }
            imageView.image = data.clothImage
            shopTitleLabel.text = data.shopTitle
            clothTitleLabel.text = data.clothTitle
            sizesLabel.text = data.sizes.joined(separator: ",")
            let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "\(data.oldPrice)")
                attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSRange(location: 0, length: attributeString.length))
            oldPriceLabel.attributedText = attributeString
            newPriceLabel.text = data.newPrice
        }
    }
    
    lazy var shopTitleLabel: UILabel = {
        let label = UILabel()
        label.text = nil
        label.textColor = .gray
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    lazy var clothTitleLabel: UILabel = {
        let label = UILabel()
        label.text = nil
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var sizesLabel: UILabel = {
        let label = UILabel()
        label.text = nil
        label.textColor = .gray
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    lazy var oldPriceLabel: UILabel = {
        let label = UILabel()
        label.text = nil
        label.textColor = .gray
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    lazy var newPriceLabel: UILabel = {
        let label = UILabel()
        label.text = nil
        label.textColor = .blue
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.image = UIImage(named: "radio-off")
        image.layer.cornerRadius = 12
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        contentView.addSubview(imageView)
        contentView.addSubview(shopTitleLabel)
        contentView.addSubview(clothTitleLabel)
        contentView.addSubview(sizesLabel)
        contentView.addSubview(oldPriceLabel)
        contentView.addSubview(newPriceLabel)
        contentView.backgroundColor = .white
        imageView.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top)
            make.bottom.equalTo(contentView.snp.bottom)
            make.right.equalTo(contentView)
            make.left.equalTo(contentView)
        }
        shopTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.bottom)
            make.left.equalTo(contentView)
        }
        clothTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(shopTitleLabel).inset(12)
            make.left.equalTo(contentView)
        }
        sizesLabel.snp.makeConstraints { make in
            make.top.equalTo(clothTitleLabel).inset(15)
            make.left.equalTo(contentView)
        }
        oldPriceLabel.snp.makeConstraints { make in
            make.top.equalTo(sizesLabel).inset(12)
            make.left.equalTo(contentView)
        }
        newPriceLabel.snp.makeConstraints { make in
            make.top.equalTo(oldPriceLabel).inset(12)
            make.left.equalTo(contentView)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
