//
//  FriendsTableViewCell.swift
//  ClientVK
//
//  Created by spector.rebop on 07.08.2020.
//  Copyright © 2020 spector.rebop. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
            backgroundColor = .lightGray
            avatarImageView.layer.cornerRadius = avatarImageView.frame.size.height/2
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
        }
        
        func configure(for model: Friend) {
            nameLabel.text = model.name
            ageLabel.text = "\(model.age)"
            avatarImageView.image = UIImage.init(named: model.imageName)
        }

    }
