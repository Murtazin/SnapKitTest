//
//  ResultsCollectionReusableView.swift
//  SnapKitTest
//
//  Created by Renat Murtazin on 13.03.2022.
//

import UIKit

class ResultsCollectionReusableView: UICollectionReusableView {
    lazy var typeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.text = "Type or label from search"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var filterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Filter", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 5
        button.sizeToFit()
        button.addTarget(self, action: #selector(filterButtonDidPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(typeLabel)
        addSubview(filterButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let const2 = self.frame.width/8
        typeLabel.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(self).inset(self.frame.height/100*30)
        }
        filterButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self).inset(20)
            make.top.equalTo(typeLabel).inset(const2)
        }
    }
    
    @objc func filterButtonDidPressed(_ sender: UIButton) {
        print("aything")
    }
}
