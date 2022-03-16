//
//  UserListProgrammaticVC.swift
//  TableViewWithCustomCellProgrammatically
//
//  Created by Maiqui Cedeño on 16/03/22.
//

import UIKit

class UserListProgrammaticVC: UIViewController {
    
    //MARK: - Variables
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 80.0
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green

    }
}

//UITableViewDataSource
extension UserListProgrammaticVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserModel.getList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(CustomCell.self)", for: indexPath) as? CustomCell else {
            return UITableViewCell()
        }
        return cell
    }
}


extension UserListProgrammaticVC: UITableViewDelegate {
    
}

