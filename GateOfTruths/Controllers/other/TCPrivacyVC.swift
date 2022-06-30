//
//  TC&privacyVC.swift
//  GateOfTruths
//
//  Created by Apple on 06/02/22.
//

import UIKit

class TCPrivacyVC: UIViewController {

    @IBOutlet weak var web: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backTapped(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    

}
