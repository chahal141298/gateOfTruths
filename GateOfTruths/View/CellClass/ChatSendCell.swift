//
//  ChatSendCell.swift
//  GateOfTruths
//
//  Created by Apple on 05/02/22.
//

import UIKit

class ChatSendCell: UITableViewCell {

    @IBOutlet var messageSend: UILabel!
    @IBOutlet var sendTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
