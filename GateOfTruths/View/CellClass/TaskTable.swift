//
//  TaskTable.swift
//  GateOfTruths
//
//  Created by Apple on 06/02/22.
//

import UIKit

class TaskTable: UITableViewCell {

    @IBOutlet weak var taskName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
