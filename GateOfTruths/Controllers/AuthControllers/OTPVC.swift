//
//  OTPVC.swift
//  GateOfTruths
//
//  Created by Apple on 06/02/22.
//

import UIKit

class OTPVC: UIViewController {

    
    var myMutableString = NSMutableAttributedString()
    
    
    @IBOutlet weak var textCode: UITextField!
    @IBOutlet weak var continueBtn: UIButton!
    @IBOutlet weak var resendBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        resendBtn.layer.borderWidth = 1
        resendBtn.layer.borderColor = UIColor(named: "buttonColor")?.cgColor
    }
    
    
   
    
    @IBAction func backTapped(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func resendCode(_ sender: Any) {
    }
    
    @IBAction func continueTapped(_ sender: UIButton){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarVC") as! TabBarVC
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
