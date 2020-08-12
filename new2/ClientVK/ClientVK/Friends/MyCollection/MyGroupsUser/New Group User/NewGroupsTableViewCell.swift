//
//  NewGroupsTableViewCell.swift
//  ClientVK
//
//  Created by spector.rebop on 11.08.2020.
//  Copyright © 2020 spector.rebop. All rights reserved.
//

import UIKit

class NewGroupsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var newavatarimagegroup: UIImageView!
    
    @IBOutlet weak var newLabelGroup: UILabel!
    

     override func awakeFromNib() {
               super.awakeFromNib()
               // Initialization code
               backgroundColor = .lightGray
               newavatarimagegroup.layer.cornerRadius = newavatarimagegroup.frame.size.height/2
           }

           override func setSelected(_ selected: Bool, animated: Bool) {
               super.setSelected(selected, animated: animated)

               // Configure the view for the selected state
           }
           
           func configure(for model: NewGroup) {
               newLabelGroup.text = model.groupsName
               newavatarimagegroup.image = UIImage.init(named: model.imageGroup)
           }

    
    
    
    

    }
    
    
       

