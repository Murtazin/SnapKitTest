//
//  SubscriptionsViewController.swift
//  SnapKitTest
//
//  Created by Renat Murtazin on 12.03.2022.
//

import UIKit

class SubscriptionsViewController: UIViewController {
    
    let checkBoxController: CheckBoxController = CheckBoxController()
    
    lazy var applyButton: UIButton = {
        let button = UIButton()
        button.setTitle("Apply", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 5
        button.sizeToFit()
        button.addTarget(self, action: #selector(applyButtonDidPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var adidasButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Adidas", for: .normal)
        button.setTitle("Adidas", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(adidasButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var nikeButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Nike", for: .normal)
        button.setTitle("Nike", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(nikeButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var reebokButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Reebok", for: .normal)
        button.setTitle("Reebok", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(reebokButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var newBalanceButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("New Balance", for: .normal)
        button.setTitle("New Balance", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(newBalanceButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var asosShopButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("ASOS", for: .normal)
        button.setTitle("ASOS", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(asosShopButtonDidPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var stockxShopButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("StockX", for: .normal)
        button.setTitle("StockX", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(stockxShopButtonDidPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var ozonShopButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Ozon", for: .normal)
        button.setTitle("Ozon", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(ozonShopButtonDidPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var newBalanceShopButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("New Balance", for: .normal)
        button.setTitle("New Balance", for: .selected)
        button.tintColor = .black
        button.setTitleColor(.black, for: .selected)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        button.sizeToFit()
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(newBalanceShopButtonDidPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var subscriptionsLabel: UILabel = {
        let label = UILabel()
        label.text = "Subscriptions"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 32)
        return label
    }()
    
    lazy var brandsLabel: UILabel = {
        let label = UILabel()
        label.text = "Brands"
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        return label
    }()
    
    lazy var shopsLabel: UILabel = {
        let label = UILabel()
        label.text = "Shops"
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        checkBoxController.buttonsArray = [adidasButton, nikeButton, newBalanceButton, reebokButton, asosShopButton, stockxShopButton, ozonShopButton, newBalanceShopButton]
        checkBoxController.defaultButton = adidasButton
        checkBoxController.defaultButtonFromShops = asosShopButton
        addElement()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        makeConstraints()
    }
    
    private func makeConstraints() {
        let const = view.frame.width/7
        let const2 = view.frame.width/8
        subscriptionsLabel.snp.makeConstraints { make in
            make.leading.equalTo(view).inset(20)
            make.top.equalTo(view).inset(const)
        }
        brandsLabel.snp.makeConstraints { make in
            make.left.equalTo(view).inset(20)
            make.top.equalTo(subscriptionsLabel).inset(const2)
        }
        adidasButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(20)
            make.top.equalTo(brandsLabel).inset(const2)
        }
        nikeButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(20)
            make.top.equalTo(adidasButton).inset(const2)
        }
        reebokButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(20)
            make.top.equalTo(nikeButton).inset(const2)
        }
        newBalanceButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(20)
            make.top.equalTo(reebokButton).inset(const2)
        }
        shopsLabel.snp.makeConstraints { make in
            make.leading.equalTo(view).inset(20)
            make.top.equalTo(newBalanceButton).inset(45)
        }
        asosShopButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(20)
            make.top.equalTo(shopsLabel).inset(const2)
        }
        stockxShopButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(20)
            make.top.equalTo(asosShopButton).inset(const2)
        }
        ozonShopButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(20)
            make.top.equalTo(stockxShopButton).inset(const2)
        }
        newBalanceShopButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(20)
            make.top.equalTo(ozonShopButton).inset(const2)
        }
        applyButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(20)
            make.bottom.equalTo(view).inset(view.frame.width/100*8)
        }
    }
    
    private func addElement() {
        view.addSubview(subscriptionsLabel)
        view.addSubview(brandsLabel)
        view.addSubview(adidasButton)
        view.addSubview(nikeButton)
        view.addSubview(newBalanceButton)
        view.addSubview(reebokButton)
        view.addSubview(shopsLabel)
        view.addSubview(asosShopButton)
        view.addSubview(stockxShopButton)
        view.addSubview(ozonShopButton)
        view.addSubview(newBalanceShopButton)
        view.addSubview(applyButton)
    }
    
    @objc func adidasButtonDidPressed(_ sender: UIButton) {
        checkBoxController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @objc func nikeButtonDidPressed(_ sender: UIButton) {
        checkBoxController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @objc func reebokButtonDidPressed(_ sender: UIButton) {
        checkBoxController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @objc func newBalanceButtonDidPressed(_ sender: UIButton) {
        checkBoxController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @objc func asosShopButtonDidPressed(_ sender: UIButton) {
        checkBoxController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @objc func stockxShopButtonDidPressed(_ sender: UIButton) {
        checkBoxController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @objc func ozonShopButtonDidPressed(_ sender: UIButton) {
        checkBoxController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @objc func newBalanceShopButtonDidPressed(_ sender: UIButton) {
        checkBoxController.buttonArrayUpdated(buttonSelected: sender)
    }
    
    @objc func applyButtonDidPressed(_ sender: UIButton) {
        switch checkBoxController.selectedButtons {
        case [asosShopButton]:
//            print("\(maleLabel.text ?? "")")
            print("asos")
        case [stockxShopButton]:
//            print("\(femaleLabel.text ?? "")")
            print("stockx")
        case [adidasButton, nikeButton]:
//            print("\(unisexLabel.text ?? "")")
            print("adnike")
        case [adidasButton, asosShopButton]:
            print("adiasos")
        default:
            break
        }
    }
}
