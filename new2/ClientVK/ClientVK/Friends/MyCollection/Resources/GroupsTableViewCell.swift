//
//  GroupsTableViewCell.swift
//  ClientVK
//
//  Created by spector.rebop on 11.08.2020.
//  Copyright © 2020 spector.rebop. All rights reserved.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {
    


    @IBOutlet weak var avatarGroupImageView: UIImageView!
    
    @IBOutlet weak var groupLabel: UILabel!
    
  override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
            backgroundColor = .lightGray
            avatarGroupImageView.layer.cornerRadius = avatarGroupImageView.frame.size.height/2
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
        }
        
        func configure(for model: NewGroup) {
            groupLabel.text = model.groupsName
            avatarGroupImageView.image = UIImage.init(named: model.imageGroup)
        }

    }

