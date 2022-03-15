//
//  SettingsViewController.swift
//  SnapKitTest
//
//  Created by Renat Murtazin on 07.03.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let radioController: RadioButtonController = RadioButtonController()
    
    lazy var applyButton: UIButton = {
        let button = UIButton()
        button.setTitle("Apply", for: .normal)
        button.backgroundColor = .label
        button.layer.cornerRadius = 5
        button.sizeToFit()
        button.addTarget(self, action: #selector(applyButtonDidPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Ivan"
        textField.textColor = .black
        textField.textAlignment = .left
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.borderStyle = .roundedRect
        textField.layer.borderColor = CGColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1)
        textField.layer.cornerRadius = 10
        return textField
    }()
    
    lazy var yourNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Your name"
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        return label
    }()
    
    lazy var male: UIButton = {
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
    
    lazy var female: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Female", for: .normal)
        button.setTitle("Female", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.label, for: .selected)
        button.setTitleColor(.label, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(femaleButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var unisex: UIButton = {
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
    
    lazy var settingsLabel: UILabel = {
        let label = UILabel()
        label.text = "Settings"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 32)
        return label
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var yourPreferencesLabel: UILabel = {
        let label = UILabel()
        label.text = "Your preferences"
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        radioController.buttonsArray = [male, female, unisex]
        radioController.defaultButton = male
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        makeConstraints()
    }
    
    func configure() {
        title = "Settings"
        self.view.backgroundColor = .systemBackground
        view.addSubview(contentView)
        contentView.addSubview(settingsLabel)
        contentView.addSubview(yourPreferencesLabel)
        contentView.addSubview(male)
        contentView.addSubview(female)
        contentView.addSubview(unisex)
        contentView.addSubview(yourNameLabel)
        contentView.addSubview(nameTextField)
        contentView.addSubview(applyButton)
    }
    
    func makeConstraints() {
        let const = view.frame.width/7
        let const2 = view.frame.width/8
        contentView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        settingsLabel.snp.makeConstraints { make in
            make.left.equalTo(contentView).inset(20)
            make.top.equalTo(contentView).inset(const)
        }
        yourPreferencesLabel.snp.makeConstraints { make in
            make.left.equalTo(contentView).inset(20)
            make.top.equalTo(settingsLabel).inset(const2)
        }
        male.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(20)
            make.top.equalTo(yourPreferencesLabel).inset(const2)
        }
        female.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(20)
            make.top.equalTo(male).inset(const2)
        }
        unisex.snp.makeConstraints { make in
            make.leading.trailing.equalTo(contentView).inset(20)
            make.top.equalTo(female).inset(const2)
        }
        yourNameLabel.snp.makeConstraints { make in
            make.leading.equalTo(contentView).inset(20)
            make.top.equalTo(unisex).inset(45)
        }
        nameTextField.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width/2)
            make.height.equalTo(40)
            make.leading.equalTo(contentView).inset(20)
            make.top.equalTo(yourNameLabel).inset(40)
        }
        applyButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(contentView).inset(20)
            make.bottom.equalTo(contentView).inset(view.frame.width/100*8)
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
    
    @objc func applyButtonDidPressed(_ sender: UIButton) {
        switch radioController.selectedButton {
        case male:
//            print("\(maleLabel.text ?? "")")
            print("")
        case female:
//            print("\(femaleLabel.text ?? "")")
            print("")
        case unisex:
//            print("\(unisexLabel.text ?? "")")
            print("")
        default:
            break
        }
    }
}
