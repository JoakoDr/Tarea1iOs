//
//  Keyboard2TableViewCell.swift
//  TareaiOs
//
//  Created by JOAQUIN DIAZ RAMIREZ on 17/10/18.
//  Copyright © 2018 JOAQUIN DIAZ RAMIREZ. All rights reserved.
//

import UIKit


protocol keyboard2SwitchDelegate: class {
    func keyboard2SwitchDelegate(cell: Keyboard2TableViewCell, didChangevalue value: Bool )
}
class Keyboard2TableViewCell: UITableViewCell {
 
    weak var delegate: keyboard2SwitchDelegate?
    @IBOutlet weak var lblLabel:UILabel?
    @IBOutlet weak var btnSwitch:UISwitch!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func switchChanged()
    {
        delegate?.keyboard2SwitchDelegate(cell: self, didChangevalue: btnSwitch.isOn)
    }
    
}
