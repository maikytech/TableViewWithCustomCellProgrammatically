//
//  UserListCell.swift
//  TableViewWithCustomCellProgrammatically
//
//  Created by Maiqui Cedeño on 17/03/22.
//

import UIKit

class UserListCell: UITableViewCell {
    
    //MARK: - IBOulets
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setData(_ user: UserModel) {
        profilePicture.image = UIImage(named: user.profilePicture)
        userNameLabel.text = user.userName
        descriptionLabel.text = user.description
    }
    
}
