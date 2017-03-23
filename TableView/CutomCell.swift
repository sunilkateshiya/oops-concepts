//
//  CutomCell.swift
//  TableView
//
//  Created by iFlame on 25/02/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class CutomCell: UITableViewCell {

    @IBOutlet var labelDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
