//
//  UserListInterfaceBuilderVC.swift
//  TableViewWithCustomCellProgrammatically
//
//  Created by Maiqui Cedeño on 17/03/22.
//

import UIKit

class UserListInterfaceBuilderVC: UIViewController {
    
    //MARK: - IBOulets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }
    
    //MARK: - Private Methods
    private func configureTableView() {
        let nibName = UINib(nibName: "\(UserListCell.self)", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "\(UserListCell.self)")
        
        let nibNameHeader = UINib(nibName: "\(HeaderIBCell.self)", bundle: nil)
        tableView.register(nibNameHeader, forHeaderFooterViewReuseIdentifier: "\(HeaderIBCell.self)")
        
        tableView.reloadData()
    }
}

//MARK: - UITableViewDataSource
extension UserListInterfaceBuilderVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserModel.getList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(UserListCell.self)", for: indexPath) as? UserListCell else {
            return UserListCell()
        }
        let user = UserModel.getList()[indexPath.row]
        cell.setData(user)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let headerCell = tableView.dequeueReusableHeaderFooterView(withIdentifier: "\(HeaderIBCell.self)") as? HeaderIBCell else {
            return HeaderIBCell()
        }
        headerCell.setData(title: "User List XIB")
        return headerCell
    }
}

//MARK: - UITableViewDelegate
extension UserListInterfaceBuilderVC: UITableViewDelegate {
    
}
