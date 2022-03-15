//
//  SexTableViewCell.swift
//  SnapKitTest
//
//  Created by Renat Murtazin on 13.03.2022.
//

import UIKit

class SexTableViewCell: UITableViewCell {
    
    let radioController: RadioButtonController = RadioButtonController()
    
    lazy var sexLabel: UILabel = {
        let label = UILabel()
        label.text = "Sex"
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        return label
    }()
    
    lazy var maleButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Male", for: .normal)
        button.setTitle("Male", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(maleButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var femaleButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Female", for: .normal)
        button.setTitle("Female", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(femaleButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var unisexButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Unisex", for: .normal)
        button.setTitle("Unisex", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(unisexButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        makeConstraints()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell() {
        radioController.buttonsArray = [maleButton, femaleButton, unisexButton]
        radioController.defaultButton = maleButton
        self.addSubview(sexLabel)
        self.addSubview(maleButton)
        self.addSubview(femaleButton)
        self.addSubview(unisexButton)
    }
    
    private func makeConstraints() {
        let const2 = self.frame.width/8
        sexLabel.snp.makeConstraints { make in
            make.leading.equalTo(self).inset(20)
            make.top.equalTo(self)
        }
        maleButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(sexLabel).inset(const2)
        }
        femaleButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(maleButton).inset(const2)
        }
        unisexButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(femaleButton).inset(const2)
        }
    }
    
    @objc func maleButtonDidPressed(_ sender: UIButton) {
        radioController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @objc func femaleButtonDidPressed(_ sender: UIButton) {
        radioController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @objc func unisexButtonDidPressed(_ sender: UIButton) {
        radioController.buttonArrayUpdated(buttonSelected: sender)
    }

}
