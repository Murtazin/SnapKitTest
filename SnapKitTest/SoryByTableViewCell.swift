//
//  SoryByTableViewCell.swift
//  SnapKitTest
//
//  Created by Renat Murtazin on 13.03.2022.
//

import UIKit

class SoryByTableViewCell: UITableViewCell {
    
    let radioController: RadioButtonController = RadioButtonController()
    
    lazy var sortByLabel: UILabel = {
        let label = UILabel()
        label.text = "Sort by"
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        return label
    }()
    
    lazy var ascendingButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Ascending", for: .normal)
        button.setTitle("Ascending", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(ascendingButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var descendingButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Descending", for: .normal)
        button.setTitle("Descending", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(descendingButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var mostProfitableButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Most profitable", for: .normal)
        button.setTitle("Most profitable", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(mostProfitableButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        makeConstraints()
    }
    
    private func makeConstraints() {
        let const2 = self.frame.width/8
        sortByLabel.snp.makeConstraints { make in
            make.leading.equalTo(self).inset(20)
            make.top.equalTo(self)
        }
        ascendingButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(sortByLabel).inset(const2)
        }
        descendingButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(ascendingButton).inset(const2)
        }
        mostProfitableButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(descendingButton).inset(const2)
        }
    }
    
    func configureCell() {
        radioController.buttonsArray = [ascendingButton, descendingButton, mostProfitableButton]
        radioController.defaultButton = ascendingButton
        self.addSubview(sortByLabel)
        self.addSubview(ascendingButton)
        self.addSubview(descendingButton)
        self.addSubview(mostProfitableButton)
    }
    
    @objc func ascendingButtonDidPressed(_ sender: UIButton) {
        radioController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @objc func descendingButtonDidPressed(_ sender: UIButton) {
        radioController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @objc func mostProfitableButtonDidPressed(_ sender: UIButton) {
        radioController.buttonArrayUpdated(buttonSelected: sender)
    }
}
