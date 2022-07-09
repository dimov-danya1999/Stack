//
//  TableViewCell.swift
//  MadiProject
//
//  Created by mac on 09.07.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

 static let userId = "TableViewCell"
    let nameCustomField = CustomTextField(type: .name)
    let ageCustomField = CustomTextField(type: .age)
    let deleteButton = UIButton(type: .system)
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setView()
        constraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setView() {
        deleteButton.tintColor = .systemGray
        deleteButton.setTitle("Удалить", for: .normal)
        deleteButton.backgroundColor = .clear
        backgroundColor = .systemOrange
    }
    
    func constraint() {
        let childt = UIStackView(arrangedSubviews: [nameCustomField, ageCustomField])
        childt.axis = .vertical
        childt.spacing = 12
        
    }
}
