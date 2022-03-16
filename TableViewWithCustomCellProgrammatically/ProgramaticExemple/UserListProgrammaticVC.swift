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
        tableView.register(CustomCell.self, forCellReuseIdentifier: "\(CustomCell.self)")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        setupView()
        tableView.reloadData()

    }
    
    //MARK: - Private Methods
    private func setupView() {
        tableViewConstrints()
        
    }
    
    private func tableViewConstrints() {
        view.addSubview(tableView)
//        var topPadding: CGFloat = 0.0
//        if let topInset = UIApplication.shared.windows.first?.safeAreaInsets.top {
//            topPadding = topInset
//        }
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
}

//MARK: - UITableViewDataSource
extension UserListProgrammaticVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserModel.getList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(CustomCell.self)", for: indexPath) as? CustomCell else {
            return UITableViewCell()
        }
        let user = UserModel.getList()[indexPath.row]
        cell.setData(user)
        return cell
    }
}

//MARK: - UITableViewDelegate
extension UserListProgrammaticVC: UITableViewDelegate {
    
}

