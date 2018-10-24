//
//  KeyboardTableViewCell.swift
//  TareaiOs
//
//  Created by JOAQUIN DIAZ RAMIREZ on 17/10/18.
//  Copyright © 2018 JOAQUIN DIAZ RAMIREZ. All rights reserved.
//

import UIKit

class KeyboardTableViewCell: UITableViewCell {
@IBOutlet weak var lblLabel:UILabel?
    @IBOutlet weak var lblLabel2:UILabel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
