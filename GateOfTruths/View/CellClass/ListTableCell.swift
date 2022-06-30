//
//  ListTableCell.swift
//  GateOfTruths
//
//  Created by Apple on 04/02/22.
//

import UIKit

class ListTableCell: UITableViewCell {

    @IBOutlet var task: UILabel!
    @IBOutlet var exwcutive: UILabel!
    @IBOutlet var editBtn: UIButton!
    @IBOutlet var openBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        openBtn.setTitleColor(UIColor.white, for: .normal)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
