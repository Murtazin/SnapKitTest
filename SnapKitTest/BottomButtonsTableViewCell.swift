//
//  BottomButtonsTableViewCell.swift
//  SnapKitTest
//
//  Created by Renat Murtazin on 13.03.2022.
//

import UIKit

class BottomButtonsTableViewCell: UITableViewCell {
    
    lazy var categoryButton: UIButton = {
        let button = UIButton(type: .system)
        let buttonImage = UIImage(systemName: "chevron.right")
        button.setImage(buttonImage, for: .normal)
        button.setTitle("Category", for: .normal)
        button.tintColor = .black
        button.titleLabel?.font = .systemFont(ofSize: 24, weight: .semibold)
        button.semanticContentAttribute = UIApplication.shared
            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: self.frame.width-40-button.frame.width, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(categoryButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var brandButton: UIButton = {
        let button = UIButton(type: .system)
        let buttonImage = UIImage(systemName: "chevron.right")
        button.setImage(buttonImage, for: .normal)
        button.setTitle("Brand", for: .normal)
        button.tintColor = .black
        button.titleLabel?.font = .systemFont(ofSize: 24, weight: .semibold)
        button.semanticContentAttribute = UIApplication.shared
            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: self.frame.width-40-button.frame.width, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(brandButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var sizeButton: UIButton = {
        let button = UIButton(type: .system)
        let buttonImage = UIImage(systemName: "chevron.right")
        button.setImage(buttonImage, for: .normal)
        button.setTitle("Size", for: .normal)
        button.tintColor = .black
        button.titleLabel?.font = .systemFont(ofSize: 24, weight: .semibold)
        button.semanticContentAttribute = UIApplication.shared
            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: self.frame.width-40-button.frame.width, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(sizeButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var shopButton: UIButton = {
        let button = UIButton(type: .system)
        let buttonImage = UIImage(systemName: "chevron.right")
        button.setImage(buttonImage, for: .normal)
        button.setTitle("Shop", for: .normal)
        button.tintColor = .black
        button.titleLabel?.font = .systemFont(ofSize: 24, weight: .semibold)
        button.semanticContentAttribute = UIApplication.shared
            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: self.frame.width-40-button.frame.width, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(shopButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        makeConstraints()
    }
    
    private func makeConstraints() {
        let const2 = self.frame.width/9
        categoryButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(self)
        }
        brandButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(categoryButton).inset(const2)
        }
        sizeButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(brandButton).inset(const2)
        }
        shopButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(sizeButton).inset(const2)
        }
    }
    
    func configureCell() {
        addSubview(categoryButton)
        addSubview(brandButton)
        addSubview(sizeButton)
        addSubview(shopButton)
    }
    
    @objc func categoryButtonDidPressed(_ sender: UIButton) {
        print("pressed category")
    }
    
    @objc func brandButtonDidPressed(_ sender: UIButton) {
        print("pressed brand")
    }
    
    @objc func sizeButtonDidPressed(_ sender: UIButton) {
        print("pressed size")
    }
    
    @objc func shopButtonDidPressed(_ sender: UIButton) {
        print("pressed shop")
    }
    
}
