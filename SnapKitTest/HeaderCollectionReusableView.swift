//
//  HeaderCollectionReusableView.swift
//  SnapKitTest
//
//  Created by Renat Murtazin on 09.03.2022.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    
    lazy var profileLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "Profile"
        label.textColor = .black
        label.textAlignment = .left
        return label
    }()
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person.circle.fill")
        return imageView
    }()
    
    lazy var fullNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
        label.text = "Murtazin Renat"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var profileSettingsButton: UIButton = {
        let button = UIButton(type: .detailDisclosure)
        let buttonImage = UIImage(systemName: "chevron.right")
        button.setImage(buttonImage, for: .normal)
        button.setTitle("Profile settings", for: .normal)
        button.tintColor = .black
        button.semanticContentAttribute = UIApplication.shared
            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: self.frame.width-40-button.frame.width, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(profileSettingsButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var subscribesSettingsButton: UIButton = {
        let button = UIButton(type: .detailDisclosure)
        let buttonImage = UIImage(systemName: "chevron.right")
        button.setImage(buttonImage, for: .normal)
        button.setTitle("Subscribes settings", for: .normal)
        button.tintColor = .black
        button.semanticContentAttribute = UIApplication.shared
            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: self.frame.width-40-button.frame.width, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(subscribesSettingsButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var myClothesLabel: UILabel = {
        let label = UILabel()
        label.text = "My clothes"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElement()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        makeConstraints()
    }
    
    private func addElement() {
        addSubview(profileLabel)
        addSubview(profileImageView)
        addSubview(fullNameLabel)
        addSubview(profileSettingsButton)
        addSubview(subscribesSettingsButton)
        addSubview(myClothesLabel)
    }
    
    private func makeConstraints() {
        profileLabel.snp.makeConstraints { make in
            make.leading.equalTo(self).inset(20)
            make.top.equalTo(self).inset(self.frame.height/100*5)
        }
        profileImageView.snp.makeConstraints { make in
            make.top.equalTo(profileLabel).inset(30)
            make.centerX.equalTo(profileLabel)
            make.height.width.equalTo(self.frame.height/4.5)
        }
        fullNameLabel.snp.makeConstraints { make in
            make.centerY.equalTo(profileImageView)
            make.centerX.equalTo(self)
        }
        profileSettingsButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(fullNameLabel).inset(self.frame.height/100*22)
        }
        subscribesSettingsButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(profileSettingsButton).inset(self.frame.height/100*18)
        }
        myClothesLabel.snp.makeConstraints { make in
            make.leading.equalTo(self).inset(20)
            make.top.equalTo(subscribesSettingsButton).inset(self.frame.height/100*18)
        }
    }
    
    @objc private func profileSettingsButtonDidPressed() {
        print("profile was pressed")
    }
    
    @objc private func subscribesSettingsButtonDidPressed() {
        print("subscribes was pressed")
    }
}
