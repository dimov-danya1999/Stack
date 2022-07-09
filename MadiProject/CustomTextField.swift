//
//  CustomTextField.swift
//  MadiProject
//
//  Created by mac on 09.07.2022.
//

import UIKit

class CustomTextField: UIView {
    
    enum ContentType: String {
        case name = "Имя"
        case age = "Возраст"
    }
        
    
    let labelname = UILabel()
    let textField = UITextField()
    let type: CustomTextField.ContentType

   
    init(type: CustomTextField.ContentType) {
        self.type = type
        super.init(frame: CGRect())
        setView()
        constraint()
    }
    
    func setView() {
        labelname.text = type.rawValue
        labelname.tintColor = .gray
        
        switch type {
        case .name:
            textField.placeholder = "Введите имя"
        case .age:
            textField.placeholder = "введите возраст"
        }
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowRadius = 2
        
    }
    
    func constraint() {
        
        let stack = UIStackView(arrangedSubviews: [labelname, textField])
        stack.axis = .vertical
        stack.spacing = 15
        
        addSubview(stack)
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 12),
            stack.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            stack.centerXAnchor.constraint(equalTo: centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  
}
