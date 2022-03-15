//
//  PriceRangeTableViewCell.swift
//  SnapKitTest
//
//  Created by Renat Murtazin on 13.03.2022.
//

import UIKit

class PriceRangeTableViewCell: UITableViewCell {
    
    let radioController: RadioButtonController = RadioButtonController()
    
    lazy var priceRangeLabel: UILabel = {
        let label = UILabel()
        label.text = "Price range"
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        return label
    }()
    
    lazy var upTo3000Button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Up to 3000₽", for: .normal)
        button.setTitle("Up to 3000₽", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(upTo3000ButtonDidPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var from3000to7000Button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("3000 - 7000₽", for: .normal)
        button.setTitle("3000 - 7000₽", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(from3000to7000ButtonDidPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var from7000to15000Button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("7000 - 15000₽", for: .normal)
        button.setTitle("7000 - 15000₽", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(from7000to15000ButtonDidPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var from15000Button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("From 15000₽", for: .normal)
        button.setTitle("From 15000₽", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(from15000ButtonDidPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var currentPriceLabel: UILabel = {
        let label = UILabel()
        guard let text = radioController.selectedButton?.currentTitle else {
            return UILabel()
        }
        label.text = text
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
        label.textAlignment = .left
        return label
    }()
    
    lazy var leftTextField: UITextField = {
        let textField = UITextField()
        textField.text = "0"
        textField.textColor = .black
        textField.textAlignment = .left
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 10
        return textField
    }()
    
    lazy var rightTextField: UITextField = {
        let textField = UITextField()
        textField.text = "3000₽"
        textField.textColor = .black
        textField.textAlignment = .left
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 10
        return textField
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        makeConstraints()
    }
    
    func configureCell() {
        radioController.buttonsArray = [upTo3000Button, from3000to7000Button, from7000to15000Button, from15000Button]
        radioController.defaultButton = upTo3000Button
        self.addSubview(priceRangeLabel)
        self.addSubview(upTo3000Button)
        self.addSubview(from3000to7000Button)
        self.addSubview(from7000to15000Button)
        self.addSubview(from15000Button)
        self.addSubview(currentPriceLabel)
        self.addSubview(leftTextField)
        self.addSubview(rightTextField)
    }
    
    private func makeConstraints() {
        let const2 = self.frame.width/8
        priceRangeLabel.snp.makeConstraints { make in
            make.leading.equalTo(self).inset(20)
            make.top.equalTo(self)
        }
        upTo3000Button.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(priceRangeLabel).inset(const2)
        }
        from3000to7000Button.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(upTo3000Button).inset(const2)
        }
        from7000to15000Button.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(from3000to7000Button).inset(const2)
        }
        from15000Button.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(from7000to15000Button).inset(const2)
        }
        currentPriceLabel.snp.makeConstraints { make in
            make.leading.equalTo(self).inset(20)
            make.top.equalTo(from15000Button).inset(const2)
        }
        leftTextField.snp.makeConstraints { make in
            make.width.equalTo(self.frame.width/2.4)
            make.height.equalTo(40)
            make.leading.equalTo(self).inset(20)
            make.top.equalTo(currentPriceLabel).inset(40)
        }
        rightTextField.snp.makeConstraints { make in
            make.width.equalTo(self.frame.width/2.4)
            make.height.equalTo(40)
            make.trailing.equalTo(self).inset(20)
            make.centerY.equalTo(leftTextField)
        }
    }
    
    @objc func upTo3000ButtonDidPressed(_ sender: UIButton) {
        radioController.buttonArrayUpdated(buttonSelected: sender)
        currentPriceLabel.text = radioController.selectedButton?.currentTitle
        leftTextField.text = "0"
        rightTextField.text = "3000₽"
    }
    
    @objc func from3000to7000ButtonDidPressed(_ sender: UIButton) {
        radioController.buttonArrayUpdated(buttonSelected: sender)
        currentPriceLabel.text = radioController.selectedButton?.currentTitle
        leftTextField.text = "3000"
        rightTextField.text = "7000₽"
    }
    
    @objc func from7000to15000ButtonDidPressed(_ sender: UIButton) {
        radioController.buttonArrayUpdated(buttonSelected: sender)
        currentPriceLabel.text = radioController.selectedButton?.currentTitle
        leftTextField.text = "7000"
        rightTextField.text = "15000₽"
    }
    
    @objc func from15000ButtonDidPressed(_ sender: UIButton) {
        radioController.buttonArrayUpdated(buttonSelected: sender)
        currentPriceLabel.text = radioController.selectedButton?.currentTitle
        leftTextField.text = "15000"
        rightTextField.text = "1362000₽"
    }
}
