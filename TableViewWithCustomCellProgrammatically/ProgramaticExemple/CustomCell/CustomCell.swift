//
//  CustomCell.swift
//  TableViewWithCustomCellProgrammatically
//
//  Created by Maiqui Cedeño on 16/03/22.
//

import UIKit

class CustomCell: UITableViewCell {
    
    //MARK: - Variables
    private lazy var profilePicture: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.addArrangedSubview(userNameLabel)
        stackView.addArrangedSubview(descriptionLabel)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    //MARK: - init
    //We must override this.
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Methods
    private func setupView() {
        profilePictureConstraints()
        stackViewConstraints()
    }
    
    private func profilePictureConstraints() {
        addSubview(profilePicture)
        NSLayoutConstraint.activate([
            profilePicture.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            profilePicture.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            profilePicture.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            profilePicture.heightAnchor.constraint(equalToConstant: 60),
            profilePicture.widthAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func stackViewConstraints() {
        addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: profilePicture.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: profilePicture.trailingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            stackView.bottomAnchor.constraint(equalTo: profilePicture.bottomAnchor)
        ])
    }
    
    private func setData(_ user: UserModel) {
        profilePicture.image = UIImage(named: user.profilePicture)
        userNameLabel.text = user.userName
        descriptionLabel.text = user.description
    }
}
