//
//  ChatReceiveCell.swift
//  GateOfTruths
//
//  Created by Apple on 05/02/22.
//

import UIKit

class ChatReceiveCell: UITableViewCell {

    @IBOutlet var message: UILabel!
    @IBOutlet var chatTime: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
