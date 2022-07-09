//
//  ViewController.swift
//  MadiProject
//
//  Created by mac on 09.07.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    lazy private var mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = mainView
        mainView.tableView.delegate = self
        mainView.tableView.dataSource = self
    }
    
    @objc func deleteButton() {
        
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.userId, for: indexPath) as! TableViewCell
        cell.deleteButton.addTarget(self, action: #selector(deleteButton), for: .touchUpInside)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
