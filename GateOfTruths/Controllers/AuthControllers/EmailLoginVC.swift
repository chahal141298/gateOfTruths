//
//  EmailLoginVC.swift
//  GateOfTruths
//
//  Created by Ashish Chahal on 10/02/22.
//

import UIKit

class EmailLoginVC: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var continueBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        emailView.layer.cornerRadius = 20
        emailView.layer.borderWidth = 1
        emailView.layer.borderColor = UIColor.gray.cgColor
        continueBtn.layer.cornerRadius = 20
        
    }
    

    @IBAction func continueTapped(_ sender: Any) {
    }
    

}
