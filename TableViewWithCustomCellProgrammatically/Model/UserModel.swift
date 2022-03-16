//
//  UserModel.swift
//  TableViewWithCustomCellProgrammatically
//
//  Created by Maiqui Cedeño on 16/03/22.
//

import Foundation

struct UserModel {
    let profilePicture: String
    let userName: String
    let description: String
    
    static func getList() -> [UserModel] {
        let list = [
            UserModel(profilePicture: "isaac-hunt", userName: "Isaac Hunt", description: "iOS Developer at Google"),
            UserModel(profilePicture: "hyon-suk", userName: "Hu Hyon-Suk", description: "Project Manager at Facebook"),
            UserModel(profilePicture: "wen-yahui", userName: "Wen Yahui", description: "iOS Developer at Amazon"),
            UserModel(profilePicture: "john-doe", userName: "John Doe", description: "Android Developer at Amazon"),
            UserModel(profilePicture: "mike-swift", userName: "Mike Swift", description: "React Native Developer at Instagram")
        ]
        
        return (list+list+list+list)
    }
}
