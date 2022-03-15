//
//  FilterViewController.swift
//  SnapKitTest
//
//  Created by Renat Murtazin on 13.03.2022.
//

import UIKit

class FilterViewController: UIViewController {
    
    lazy var applyButton: UIButton = {
        let button = UIButton()
        button.setTitle("Apply", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 5
        button.sizeToFit()
        button.addTarget(self, action: #selector(applyButtonDidPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var tableView: UITableView = {
        let view = UITableView()
        view.register(SexTableViewCell.self, forCellReuseIdentifier: "cell")
        view.register(SoryByTableViewCell.self, forCellReuseIdentifier: "cell2")
        view.register(PriceRangeTableViewCell.self, forCellReuseIdentifier: "cell3")
        view.register(BottomButtonsTableViewCell.self, forCellReuseIdentifier: "cell4")
        view.separatorStyle = .none
        return view
    }()
    
    lazy var filterLabel: UILabel = {
        let label = UILabel()
        label.text = "Filter"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        addElement()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        makeConstraints()
    }
    
    private func makeConstraints() {
        let const = view.frame.height/18
        let const2 = view.frame.width/8
        filterLabel.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(20)
            make.top.equalTo(view).inset(const)
        }
        applyButton.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(20)
            make.bottom.equalTo(view).inset(view.frame.height/24)
        }
        tableView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view)
            make.top.equalTo(filterLabel).inset(const2)
            make.bottom.equalTo(applyButton).inset(const2)
        }
    }
    
    private func addElement() {
        view.addSubview(filterLabel)
        view.addSubview(applyButton)
        view.addSubview(tableView)
    }
    
    @objc func applyButtonDidPressed(_ sender: UIButton) {
        print("pressed")
    }
}

extension FilterViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SexTableViewCell else {
                return UITableViewCell()
            }
            cell.configureCell()
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as? SoryByTableViewCell else {
                return UITableViewCell()
            }
            cell.configureCell()
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as? PriceRangeTableViewCell else {
                return UITableViewCell()
            }
            cell.configureCell()
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell4", for: indexPath) as? BottomButtonsTableViewCell else {
                return UITableViewCell()
            }
            cell.configureCell()
            return cell
        default:
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

extension FilterViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0, 1:
            return view.frame.width/2
        case 2:
            return view.frame.width/1.1
        case 3:
            return view.frame.width/2.45
        default:
            return UITableView.automaticDimension
        }
    }
}
