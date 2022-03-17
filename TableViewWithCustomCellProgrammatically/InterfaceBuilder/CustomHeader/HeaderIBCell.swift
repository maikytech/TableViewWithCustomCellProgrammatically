//
//  HeaderIBCell.swift
//  TableViewWithCustomCellProgrammatically
//
//  Created by Maiqui Cedeño on 17/03/22.
//

import Foundation
import UIKit

final class HeaderIBCell: UITableViewHeaderFooterView {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var shareIcon: UIImageView!
    
    func setData(title: String) {
        titleLabel.text = title
    }
}
