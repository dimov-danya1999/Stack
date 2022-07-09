//
//  MainView.swift
//  MadiProject
//
//  Created by mac on 09.07.2022.
//

import UIKit

class MainView: UIView {
    
    let nameCustom = CustomTextField(type: .name)
    let ageCustom = CustomTextField(type: .age)
    let kidsLabel = UILabel()
    let addKids = UIButton(type: .system)
    
    let tableView = UITableView()
    
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.text = "Персональный данные"
        label.font = .systemFont(ofSize: 18, weight: .bold)
        return label
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        constraints()
        setView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setView() {
        tableView.backgroundColor = .systemMint
        
        kidsLabel.text = "Дети (макс.5)"
        addKids.backgroundColor = .clear
        addKids.setTitle("Добавить ребенка", for: .normal)
        addKids.setImage(UIImage(systemName: "plus"), for: .normal)
        addKids.layer.borderWidth = 2
        addKids.layer.borderColor = UIColor.blue.cgColor
        addKids.layer.cornerRadius = 27
        addKids.tintColor = .systemBlue
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.userId)
        
    }
    func constraints() {
        addSubview(textLabel)
        
        let topstack = UIStackView(arrangedSubviews: [nameCustom, ageCustom])
        topstack.axis = .vertical
        topstack.spacing = 25
        topstack.translatesAutoresizingMaskIntoConstraints = false
        addSubview(topstack)
        
        let middleStack = UIStackView(arrangedSubviews: [kidsLabel, addKids])
        middleStack.axis = .horizontal
        middleStack.spacing = 20
        addSubview(middleStack)
        middleStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            middleStack.topAnchor.constraint(equalTo: topstack.bottomAnchor,constant: 12),
            middleStack.leadingAnchor.constraint(equalTo: topstack.leadingAnchor),
            middleStack.trailingAnchor.constraint(equalTo: topstack.trailingAnchor),
            middleStack.heightAnchor.constraint(equalToConstant: 54)
        ])
      
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 24),
            textLabel.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            
            topstack.leadingAnchor.constraint(equalTo: textLabel.leadingAnchor),
            topstack.centerXAnchor.constraint(equalTo: centerXAnchor),
            topstack.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 32),
            topstack.heightAnchor.constraint(equalToConstant: 160)
        ])
        
        addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: middleStack.bottomAnchor,constant: 16),
            tableView.leadingAnchor.constraint(equalTo: middleStack.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: middleStack.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
      
    }
}
